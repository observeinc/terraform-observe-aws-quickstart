resource "observe_dataset" "resources" {
  workspace   = local.workspace
  name        = format(var.name_format, "Resources")
  icon_url    = "user-interface/toolbars/right-navigation-toolbar"
  freshness   = var.freshness_default_duration
  description = "AWS Asset Inventory"

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "http" and path_exists(FIELDS, "configuration") //and bool(FIELDS.configuration.Recording)=true

      make_col
        ARN:string(FIELDS.ARN),
        Configuration:object(FIELDS.configuration),
        Service:split_part(string(FIELDS.resourceType), "::", 2),
        ServiceSubType:split_part(string(FIELDS.resourceType), "::", 3)

      filter Service!="Config" and ServiceSubType!="ResourceCompliance"

      extract_regex ARN, /^arn:(?P<Partition>[^:]*):(?P<ServiceIgnore>[^:]*):(?P<Region>[^:]*):(?P<AccountID>[^:]*):(?P<Resource>.*)$/
      make_col Name:coalesce(get_regex(ARN, /arn:(aws|aws-us-gov|aws-cn):.*?:(\d{12}):(.*)$/, 3), Resource)
      make_col ID:coalesce(string(FIELDS.resourceId), string(Configuration.Id), string(Configuration.id))

      make_col
        Name:coalesce(if(starts_with(Name, "/"), substring(Name, 1), Name), ID),
        Tags:coalesce(
          pivot_array(Configuration.Tags, "key", "value"),
          pivot_array(Configuration.tags, "key", "value"),
          pivot_array(Configuration.tagSet, "key", "value"),
          pivot_array(Configuration.tagList, "key", "value")
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
        true, ID)

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

  stage {
    pipeline = <<-EOF
    EOF
  }
}
