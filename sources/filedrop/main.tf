locals {
  name = replace(var.name, "{region}", var.aws_region)

  enable_filedrop = var.enable_filedrop

  aws_role_arn = local.enable_filedrop ? "arn:aws:iam::${var.aws_account_id}:role/${local.name}" : ""
  template_url = "https://observeinc-${var.aws_region}.s3.amazonaws.com/aws-sam-apps/${var.release_version}/stack.yaml"

  destination = local.enable_filedrop ? observe_filedrop.aws_filedrop[0].endpoint[0].s3[0] : {
    uri = "https://${nonsensitive(observe_datastream_token.this[0].secret)}@${trim(data.observe_ingest_info.this[0].collect_url, "https://")}/v1/http"
  }

  post_install_vars = {
    quick_create_link              = local.quick_create_link
    name                           = local.name
    aws_region                     = var.aws_region
    template_url                   = local.template_url
    cloudformation_parameters      = local.cloudformation_parameters
    enable_cloudwatch_metricstream = var.enable_cloudwatch_metricstream
    enable_cloudwatch_logs         = var.enable_cloudwatch_logs
    enable_config                  = var.enable_config
    destination                    = local.destination
  }

  cloudformation_parameters = {
    DataAccessPointArn    = local.enable_filedrop ? observe_filedrop.aws_filedrop[0].endpoint[0].s3[0].arn : ""
    DestinationUri        = local.enable_filedrop ? "s3://${local.destination.bucket}/${local.destination.prefix}" : local.destination.uri
    IncludeResourceTypes  = var.enable_config ? "*" : ""
    LogGroupNamePrefixes  = var.enable_cloudwatch_logs ? "*" : ""
    MetricStreamFilterUri = var.enable_cloudwatch_metricstream ? "s3://observeinc-${var.aws_region}/aws-sam-apps/${var.release_version}/cloudwatchmetrics/filters/recommended.yaml" : ""
  }

  quick_create_link = join("", [for line in split("\n", <<-EOF
    https://${var.aws_region}.console.aws.amazon.com/cloudformation/home
        #/stacks/create/review
        ?region=${var.aws_region}
        &templateURL=${local.template_url}
        &stackName=${local.name}
        &${join("&", [for k, v in local.cloudformation_parameters : "param_${k}=${urlencode(v)}"])}
  EOF
  ) : trimspace(line)])
}

resource "observe_filedrop" "aws_filedrop" {
  count      = local.enable_filedrop ? 1 : 0
  workspace  = var.workspace.oid
  datastream = var.datastream.oid

  name = local.aws_role_arn

  config {
    provider {
      aws {
        region   = "us-west-2"
        role_arn = local.aws_role_arn
      }
    }
  }
}

data "observe_ingest_info" "this" {
  count = local.enable_filedrop ? 0 : 1
}

resource "observe_datastream_token" "this" {
  count      = local.enable_filedrop ? 0 : 1
  datastream = var.datastream.oid
  name       = "${local.name}-${var.aws_account_id}"
}
