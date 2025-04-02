resource "observe_dataset" "logs" {
  workspace              = local.workspace
  name                   = format(var.name_format, "Logs")
  icon_url               = "programming/coding/event-log"
  freshness              = var.freshness_default_duration
  description            = "Logs Dataset"
  rematerialization_mode = local.rematerialization_mode

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter (OBSERVATION_KIND="http" or OBSERVATION_KIND="filedrop") and string(EXTRA["content-type"]) = "application/x-aws-cloudwatchlogs"

      make_col timestamp:from_milliseconds(int64(FIELDS.timestamp))
      set_valid_from options(max_time_diff:${var.max_time_diff_duration}), timestamp
      extract_regex string(EXTRA.key), /cloudwatchlogs\/(?P<region>[^\/]+)\/\d{4}\//
      make_col
        id:string(FIELDS.id),
        logGroup:string(FIELDS.logGroup),
        logStream:string(FIELDS.logStream),
        message:string(FIELDS.message),
        messageType:string(FIELDS.messageType),
        owner:string(FIELDS.owner),
        subscriptionFilters:array(FIELDS.subscriptionFilters)

      // To enable a greater look and feel in the log explorer
      // embed the actual message as jsonPayload (object) if parsable, or use textPayload (string)
      // result: Object(textPayload?: String, jsonPayload?: Object)
      make_col jsonMessage:object(parse_json(message))
      make_col message:make_object(
        jsonPayload:jsonMessage,
        textPayload:if(is_null(string(jsonMessage)), message, string_null())
      )

      make_col
        service:case(
          starts_with(logGroup, "/aws/eks/"), "EKS",
          starts_with(logGroup, "/aws/ecs/"), "ECS",
          starts_with(logGroup, "/aws/lambda/"), "Lambda",
          starts_with(logGroup, "/aws/rds/") or logGroup="RDSOSMetrics", "RDS"
        ),
        accountId:owner,
        resourceId:case(
          starts_with(logGroup, "/aws/eks/"), get_regex(logGroup, /^\/aws\/eks\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/ecs/containerinsights/"), get_regex(logGroup, /^\/aws\/ecs\/containerinsights\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/ecs/"), get_regex(logGroup, /^\/aws\/ecs\/([^\/]*)\/.*/, 1),
          starts_with(logGroup, "/aws/lambda/"), get_regex(logGroup, /^\/aws\/lambda\/([^\/]*).*/, 1),
          starts_with(logGroup, "/aws/rds/instance/"), get_regex(logGroup, /^\/aws\/rds\/instance\/([^\/]*).*/, 1),
          starts_with(logGroup, "/aws/rds/cluster/"), get_regex(logGroup,  /^\/aws\/rds\/cluster\/([^\/]*).*/, 1),
          logGroup="RDSOSMetrics", string(message.jsonPayload.instanceID)
        )

      pick_col
        timestamp,
        accountId:owner,
        region,
        service,
        resourceId,
        id,
        message,
        logGroup,
        logStream,
        messageType

      set_col_enum message:false
      set_col_visible id:false, messageType:false

      interface "log", "log":message
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
