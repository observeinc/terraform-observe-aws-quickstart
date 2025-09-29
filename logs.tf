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

resource "observe_dataset" "cloudtrail_events" {
  workspace              = local.workspace
  name                   = format(var.name_format, "CloudTrail Events")
  icon_url               = "programming/coding/event-log"
  freshness              = var.freshness_default_duration
  description            = "CloudTrail Events Dataset"
  rematerialization_mode = local.rematerialization_mode

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "filedrop"
      filter EXTRA."content-type"= "application/x-aws-cloudtrail"

      pick_col BUNDLE_TIMESTAMP,
        records:FIELDS,
        bucket:string(EXTRA.bucket),
        key:string(EXTRA.key)

      make_col eventTime:parse_isotime(string(records.eventTime))
      set_valid_from options(max_time_diff:4h), eventTime
      pick_col
        eventTime,
        eventID:string(records.eventID),
        eventName:string(records.eventName),
        eventSource:string(records.eventSource),
        eventType:string(records.eventType),
        eventVersion:string(records.eventVersion),
        recipientAccountId:string(records.recipientAccountId),
        awsRegion:string(records.awsRegion),
        requestID:string(records.requestID),
        responseElements:object(records.responseElements),
        requestParameters:object(records.requestParameters),
        sourceIPAddress:string(records.sourceIPAddress),
        userAgent:string(records.userAgent),
        userIdentity:records.userIdentity,
        userArn:if(records.userIdentity.type = "IAMUser", string(records.userIdentity.arn), string_null()),
        roleArn:if(records.userIdentity.type = "AssumedRole", string(records.userIdentity.sessionContext.sessionIssuer.arn), string_null()),
        errorCode:string(records.errorCode),
        errorMessage:string(records.errorMessage),
        additionalEventData:object(records.additionalEventData),
        resources:array(records.resources),
        records

      dedup eventID
      set_col_visible resources:false, records:false
      interface "log", "log":records
    EOF
  }
}

resource "observe_dataset" "s3_records" {
  workspace              = local.workspace
  name                   = format(var.name_format, "S3 Records")
  icon_url               = "programming/coding/event-log"
  freshness              = var.freshness_default_duration
  description            = "S3 Records Dataset"
  rematerialization_mode = local.rematerialization_mode

  inputs = {
    "datastream" = local.datastream
  }

  stage {
    input    = "datastream"
    pipeline = <<-EOF
      filter OBSERVATION_KIND = "filedrop"
      filter ((string(EXTRA['content-type']) = "text/plain"))
      pick_col timestamp:BUNDLE_TIMESTAMP,
        text:string(FIELDS.text),
        bucket:string(EXTRA.bucket),
        key:string(EXTRA.key)
      interface "log", "log":text
    EOF
  }
}