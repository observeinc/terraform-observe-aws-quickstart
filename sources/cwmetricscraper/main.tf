locals {
  release_version = "latest"
  aws_role_arn    = "arn:aws:iam::${var.aws_account_id}:role/${var.name}"
  template_url    = "https://observeinc-${var.aws_regions[0]}.s3.amazonaws.com/aws-sam-apps/${local.release_version}/externalrole.yaml"

  datastream_ids = [data.observe_oid.datastream.id]
  allowed_actions = [
    "cloudwatch:GetMetricData",
    "cloudwatch:ListMetrics",
    "tag:GetResources",
  ]
  post_install_vars = {
    quick_create_link         = local.quick_create_link
    name                      = var.name
    template_url              = local.template_url
    cloudformation_parameters = local.cloudformation_parameters
    observe_aws_account_id    = data.observe_cloud_info.this.account_id
    datastream_ids            = jsonencode(local.datastream_ids)
    allowed_actions           = jsonencode(local.allowed_actions)
  }

  cloudformation_parameters = {
    ObserveAwsAccountId = data.observe_cloud_info.this.account_id
    DatastreamIds       = join(",", local.datastream_ids)
    AllowedActions      = join(",", local.allowed_actions)
  }

  quick_create_link = join("", [for line in split("\n", <<-EOF
    https://${var.aws_regions[0]}.console.aws.amazon.com/cloudformation/home
        #/stacks/create/review
        ?templateURL=${local.template_url}
        &stackName=${var.name}
        &${join("&", [for k, v in local.cloudformation_parameters : "param_${k}=${urlencode(v)}"])}
  EOF
  ) : trimspace(line)])
}

data "observe_cloud_info" "this" {}

data "observe_oid" "datastream" {
  oid = var.datastream.oid
}

resource "observe_poller" "cloudwatch_metrics" {
  for_each = toset(var.aws_regions)

  workspace  = var.workspace.oid
  datastream = var.datastream.oid

  name     = "${local.aws_role_arn}/${each.key}"
  interval = var.interval_duration

  cloudwatch_metrics {
    assume_role_arn = local.aws_role_arn
    region          = each.key
    dynamic "query" {
      for_each = toset(var.metric_namespaces)
      content {
        namespace = query.key

        dynamic "resource_filter" {
          for_each = length(var.resource_tags) > 0 ? [1] : []
          content {
            dynamic "tag_filter" {
              for_each = toset(var.resource_tags)
              content {
                key    = split("=", tag_filter.key)[0]
                values = try(split(",", regex("[^=]+=(?P<values>.*)", tag_filter.key)["values"]), [])
              }
            }
          }
        }
      }
    }
  }
}
