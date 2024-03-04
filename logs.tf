resource "observe_dataset" "logs" {
  workspace   = local.workspace
  name        = format(var.name_format, "Logs")
  icon_url    = "programming/coding/event-log"
  freshness   = var.freshness_default_duration
  description = "Logs Dataset"

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "kinesis"
      make_col
        data:parse_json(string(FIELDS.data)),
        sourceArn:string(EXTRA['X-Amz-Firehose-Source-Arn'])
      filter not is_null(data.logEvents)
      #hint{cacheVerbsIntermediateResult:""}
      make_col
        logEvents:data.logEvents,
        logGroup:string(data.logGroup),
        logStream:string(data.logStream),
        messageType:string(data.messageType),
        owner:string(data.owner),
        subscriptionFilters:data.subscriptionFilters

      flatten_single logEvents
      make_col ts:from_milliseconds(int64(_c_logEvents_value.timestamp))
      set_valid_from options(max_time_diff:${var.max_time_diff_duration}), ts

      make_col
        timestamp:ts,
        id:string(_c_logEvents_value.id),
        message:string(_c_logEvents_value.message),
        subscriptionFilters:array(subscriptionFilters)

      make_col
        service:case(
          starts_with(logGroup, "/aws/eks/"), "EKS",
          starts_with(logGroup, "/aws/ecs/"), "ECS",
          starts_with(logGroup, "/aws/lambda/"), "Lambda",
          starts_with(logGroup, "/aws/rds/"), "RDS"
        ),
        accountId:owner,
        resourceId:case(
          starts_with(logGroup, "/aws/eks/"), get_regex(logGroup, /^\/aws\/eks\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/ecs/containerinsights/"), get_regex(logGroup, /^\/aws\/ecs\/containerinsights\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/ecs/"), get_regex(logGroup, /^\/aws\/ecs\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/lambda/"), get_regex(logGroup, /^\/aws\/lambda\/([^\/]*).*/, 1),
          starts_with(logGroup, "/aws/rds/instance/"), get_regex(logGroup, /^\/aws\/rds\/instance\/([^\/]*).*/, 1),
          starts_with(logGroup, "/aws/rds/cluster/"), get_regex(logGroup,  /^\/aws\/rds\/cluster\/([^\/]*).*/, 1)
        )

      set_col_enum message:false
      extract_regex sourceArn, /^arn:aws:[^:]+:(?P<region>[^:]+)/

      pick_col
        timestamp:ts,
        accountId:owner,
        region,
        service,
        resourceId,
        id,
        message,
        logGroup,
        logStream,
        messageType

      interface "log", "log":message
    EOF
  }

  stage {
    pipeline = <<-EOF
    EOF
  }
}

resource "observe_link" "logs" {
  workspace = var.workspace.oid
  source    = observe_dataset.logs.oid
  target    = observe_dataset.resources.oid
  fields    = ["accountId:AccountID", "region:Region", "service:Service", "resourceId:ID"]
  label     = "Resource"
}
