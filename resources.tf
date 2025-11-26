resource "observe_dataset" "resources" {
  workspace              = local.workspace
  name                   = format(var.name_format, "AWS Asset Inventory")
  icon_url               = "user-interface/toolbars/right-navigation-toolbar"
  freshness              = var.freshness_default_duration
  description            = "AWS Asset Inventory"
  rematerialization_mode = local.rematerialization_mode

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    alias    = "from_config_deliveries"
    input    = "datastream"
    pipeline = <<-EOF
        filter (OBSERVATION_KIND="http" or OBSERVATION_KIND="filedrop") and (string(EXTRA["content-type"]) = "application/x-aws-config" or string(EXTRA["content-type"]) = "application/x-aws-change")

        extract_regex string(EXTRA["key"]),
          /AWSLogs\/(o-[a-z0-9]{10,32}\/)?\d+\//
          /Config\/[^\/]+\/\d{4}\/\d+\/\d+\/(?P<recordType>[^\/]+)\//
          /(.*)?(?P<fileCreationTime>\d{8}T\d{6}Z)[^\/]*/

        filter not is_null(recordType)

        make_col Configuration:object(coalesce(FIELDS.configurationItem, FIELDS.Configuration, FIELDS))

        make_col
            fileCreationTime:parse_timestamp(fileCreationTime, "YYYYMMDDTHH24MISSZ"),
            configurationItemCaptureTime:parse_isotime(string(Configuration.configurationItemCaptureTime)),
            configurationStateId:from_milliseconds(int64(Configuration.configurationStateId)),
            contentType:string(EXTRA["content-type"])

        pick_col
          BUNDLE_TIMESTAMP,
          fileCreationTime,
          configurationStateId,
          recordType,
          contentType,
          awsAccountId:string(FIELDS.awsAccountId),
          awsRegion:string(FIELDS.awsRegion),
          ID:string(Configuration.resourceId),
          ARN:string(Configuration.ARN),
          Configuration:object(coalesce(Configuration.configuration, Configuration)),
          Service:split_part(string(Configuration.resourceType), "::", 2),
          ServiceSubType:split_part(string(Configuration.resourceType), "::", 3),
          Tags:object(coalesce(Configuration.tags, Configuration.supplementaryConfiguration.Tags))

        filter (Service!="Config" and ServiceSubType != "ResourceCompliance") and (Service!="SSM" and ServiceSubType != "AssociationCompliance")
    EOF
  }
  stage {
    alias    = "from_config_snapshot_and_oversized_change_notification"
    pipeline = <<-EOF
        filter recordType = "ConfigSnapshot" or recordType = "OversizedChangeNotification"
        rename_col timestamp:fileCreationTime
        // https://aws.amazon.com/blogs/mt/configuration-history-configuration-snapshot-files-aws-config/
        // ConfigSnapshot events are delivered based on the configured frequency (collection defaults to 3h)
        // OversizedChangeNotification events are delivered when a resource changes but the payload exceeds SNS limit (256KB)
        set_valid_from options(max_time_diff:${var.max_time_diff_duration}), timestamp

        #hint{breakTransformPipelineAfterVerb:""}
        pick_col
          timestamp,
          awsAccountId,
          awsRegion,
          Service,
          ServiceSubType,
          ID,
          ARN,
          Configuration,
          Tags
    EOF
  }

  stage {
    alias    = "from_sns_change_notification"
    input    = "datastream"
    pipeline = <<-EOF
        filter (OBSERVATION_KIND="http" or OBSERVATION_KIND="filedrop") and EXTRA['content-type'] = "application/x-aws-sqs"
        make_col body:object(parse_json(FIELDS.body))
        filter body.Subject ~ "AWS Config"
        make_col detail:object(parse_json(body.Message))

        make_col
          timestamp:parse_isotime(string(detail.notificationCreationTime)),
          Configuration:object(coalesce(detail.configuration, detail.configurationItemSummary, detail.configurationItem, detail))

        pick_col
          BUNDLE_TIMESTAMP,
          timestamp,
          awsAccountId:string(Configuration.awsAccountId),
          awsRegion:string(Configuration.awsRegion),
          ARN:string(Configuration.ARN),
          ID:coalesce(string(Configuration.resourceId), string(Configuration.Id), string(Configuration.id)),
          Service:split_part(string(Configuration.resourceType), "::", 2),
          ServiceSubType:split_part(string(Configuration.resourceType), "::", 3),
          Configuration:object(coalesce(Configuration.configuration, Configuration)),
          Tags:object(coalesce(Configuration.tags, Configuration.supplementaryConfiguration.Tags))

        // Fallback if account ID and region are nested one level deeper
        make_col
          awsAccountId:coalesce(awsAccountId, string(Configuration.awsAccountId)),
          awsRegion:coalesce(awsRegion, string(Configuration.awsRegion))

        filter Service!="Config" and not contains(ServiceSubType, "Compliance") and ((is_null(Configuration.messageType) or Configuration.messageType = parse_json("null") or (string(Configuration.messageType) != "ComplianceChangeNotification")))

        set_valid_from options(max_time_diff:${var.max_time_diff_duration}), timestamp
        #hint{breakTransformPipelineAfterVerb:""}
        drop_col BUNDLE_TIMESTAMP
    EOF
  }

  stage {
    input    = "from_config_snapshot_and_oversized_change_notification"
    pipeline = <<-EOF
        #debug{tempoRewritesByName: "rewritejsonstringcolumn"}

        union @from_sns_change_notification

        // Just in case ARN could be a more accurate source of identifying fields
        extract_regex ARN, /^arn:(?P<Partition>[^:]*):(?P<ServiceIgnore>[^:]*):(?P<Region>[^:]*):(?P<AccountID>[^:]*):(?P<Resource>.*)$/
        make_col
          AccountID:if(AccountID="" or is_null(AccountID), awsAccountId, AccountID),
          Region:if(Region="" or is_null(Region), awsRegion, Region),
          Tags:coalesce(
            Tags,
            pivot_array(coalesce(Configuration.Tags, Configuration.tags, Configuration.tagSet, Configuration.tagList), "key", "value")
          )

        make_col
          Name:coalesce(get_regex(ARN, /arn:(aws|aws-us-gov|aws-cn):.*?:(\d{12}):(.*)$/, 3), Resource),
          ttl:case(Configuration.configurationItemStatus="ResourceDeleted", 1ns),
          Tags:if(is_null(Tags) or string(Tags)="{}", object_null(), Tags)

        make_col
          Name:coalesce(if(starts_with(Name, "/"), substring(Name, 1), Name), ID),
          ID:case(
            Service="RDS" and ServiceSubType="DBInstance", split_part(ARN, ":db:", 2),
            Service="RDS" and ServiceSubType="DBCluster", split_part(ARN, ":cluster:", 2),
            Service="AutoScaling" and ServiceSubType="AutoScalingGroup", split_part(ARN, "autoScalingGroupName/", 2),
            Service="GlobalAccelerator", concat_strings("accelerator/", split_part(ARN, "accelerator/", 2)),
            true, ID)

        make_resource options(expiry:${var.max_expiry_duration}),
          Tags,
          Configuration,
          Name,
          ServiceSubType,
          ARN,
          primary_key(AccountID, Region, Service, ID),
          valid_for(ttl)

        set_label Name

        add_key ARN
    EOF
  }
}
