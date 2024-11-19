resource "observe_dataset" "resources" {
  workspace   = local.workspace
  name        = format(var.name_format, "AWS Asset Inventory")
  icon_url    = "user-interface/toolbars/right-navigation-toolbar"
  freshness   = var.freshness_default_duration
  description = "AWS Asset Inventory"

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    alias    = "from_config_snapshot"
    input    = "datastream"
    pipeline = <<-EOF
        filter (OBSERVATION_KIND="http" or OBSERVATION_KIND="filedrop") and string(EXTRA["content-type"]) = "application/x-aws-config"

        // for now keep same logic as s3 records
        // we should avoid using filename for reference timestamp
        extract_regex string(EXTRA["key"]),
          /AWSLogs\/(o-[a-z0-9]{10,32}\/)?\d+\//
          /Config\/[^\/]+\/\d{4}\/\d+\/\d+\/(?P<recordType>[^\/]+)\//
          /(.*)?(?P<fileCreationTime>\d{8}T\d{6}Z)[^\/]*/

        filter not is_null(recordType)
        make_col fileCreationTime:parse_timestamp(fileCreationTime, "YYYYMMDDTHH24MISSZ")
        set_valid_from options(max_time_diff:30m), fileCreationTime

        make_col
          timestamp:fileCreationTime,
          ARN:string(FIELDS.ARN),
          Configuration:object(FIELDS.configuration),
          Service:split_part(string(FIELDS.resourceType), "::", 2),
          ServiceSubType:split_part(string(FIELDS.resourceType), "::", 3),
          Tags:object(coalesce(FIELDS.tags, FIELDS.supplementaryConfiguration.Tags))

        filter Service!="Config" and ServiceSubType!="ResourceCompliance"

        extract_regex ARN, /^arn:(?P<Partition>[^:]*):(?P<ServiceIgnore>[^:]*):(?P<Region>[^:]*):(?P<AccountID>[^:]*):(?P<Resource>.*)$/
        make_col
          AccountID:if(AccountID="" or is_null(AccountID), string(FIELDS.awsAccountId), AccountID),
          Region:if(Region="" or is_null(Region), string(FIELDS.awsRegion), Region)
        make_col Name:coalesce(get_regex(ARN, /arn:(aws|aws-us-gov|aws-cn):.*?:(\d{12}):(.*)$/, 3), Resource)
        make_col ID:coalesce(string(FIELDS.resourceId), string(Configuration.Id), string(Configuration.id))
    EOF
  }

  stage {
    alias    = "from_sns_change_notification"
    input    = "datastream"
    pipeline = <<-EOF
        // SNS change notifications are sent through SQS
        filter (OBSERVATION_KIND="http" or OBSERVATION_KIND="filedrop") and EXTRA['content-type'] = "application/x-aws-sqs"
        make_col body:parse_json(FIELDS.body)
        filter body.Subject ~ "AWS Config"
        make_col detail:parse_json(body.Message)

        make_col notificationCreationTime:parse_isotime(string(detail.notificationCreationTime))
        set_valid_from options(max_time_diff:${var.max_time_diff_duration}), notificationCreationTime

        filter not is_null(detail.configurationItem)
        pick_col
          timestamp:notificationCreationTime,
          FIELDS:object(detail.configurationItem)

        make_col
          ARN:string(FIELDS.ARN),
          Configuration:object(FIELDS.configuration),
          Service:split_part(string(FIELDS.resourceType), "::", 2),
          ServiceSubType:split_part(string(FIELDS.resourceType), "::", 3),
          Tags:object(coalesce(FIELDS.tags, FIELDS.supplementaryConfiguration.Tags))

        filter Service!="Config" and ServiceSubType!="ResourceCompliance"

        extract_regex ARN, /^arn:(?P<Partition>[^:]*):(?P<ServiceIgnore>[^:]*):(?P<Region>[^:]*):(?P<AccountID>[^:]*):(?P<Resource>.*)$/
        make_col
          AccountID:if(AccountID="" or is_null(AccountID), string(FIELDS.awsAccountId), AccountID),
          Region:if(Region="" or is_null(Region), string(FIELDS.awsRegion), Region)
        make_col Name:coalesce(get_regex(ARN, /arn:(aws|aws-us-gov|aws-cn):.*?:(\d{12}):(.*)$/, 3), Resource)
        make_col ID:coalesce(string(FIELDS.resourceId), string(Configuration.Id), string(Configuration.id))
    EOF
  }

  stage {
    input    = "from_config_snapshot"
    pipeline = <<-EOF
        union @from_sns_change_notification

        make_col
          Name:coalesce(if(starts_with(Name, "/"), substring(Name, 1), Name), ID),
          Tags:coalesce(
            Tags,
            pivot_array(coalesce(Configuration.Tags, Configuration.tags, Configuration.tagSet, Configuration.tagList), "key", "value")
          ),
          Configuration:drop_fields(Configuration, "Tags", "tags", "tagSet", "tagList"),
          AccountID:coalesce(AccountID, string(FIELDS.awsAccountId)),
          Region:coalesce(Region, string(FIELDS.awsRegion))

        make_col Tags:if(is_null(Tags) or string(Tags)="{}", object_null(), Tags)

        // In RDS DbiResourceId ships as the ResourceId in AWS Config,
        // whereas metrics and logs tend to use the cluster / instance name as labels
        // so we can safely extract that from ARN as the ID, since DBInstanceIdentifier is available as a Configuration field 
        make_col ID:case(
          Service="RDS" and ServiceSubType="DBInstance", split_part(ARN, ":db:", 2),
          Service="RDS" and ServiceSubType="DBCluster", split_part(ARN, ":cluster:", 2),
          Service="ApiGateway" and ServiceSubType="RestApi", string(Configuration.name),
          Service="AutoScaling" and ServiceSubType="AutoScalingGroup", split_part(ARN, "autoScalingGroupName/", 2),
          true, ID)
        
        // ApiGateway ID is not useful for names
        make_col Name:case(
          Service="ApiGateway" and ServiceSubType="RestApi", concat_strings("restapis/", string(Configuration.name)),
          true, Name
        )
        
        make_resource options(expiry:${var.max_expiry_duration}),
          Tags,
          Configuration,
          Name,
          ServiceSubType,
          ARN,
          primary_key(AccountID, Region, Service, ID)

        pick_col
          @."Valid From",
          @."Valid To",
          Name,
          AccountID,
          Region,
          Service,
          ServiceSubType,
          ID,
          ARN,
          Configuration,
          Tags

        set_label Name

        add_key ARN
    EOF
  }
}
