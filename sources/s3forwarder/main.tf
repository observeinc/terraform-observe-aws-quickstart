locals {
  name = replace(var.name, "{region}", var.aws_region)

  aws_role_arn     = "arn:aws:iam::${var.aws_account_id}:role/${local.name}"
  template_url     = "https://observeinc-${var.aws_region}.s3.amazonaws.com/aws-sam-apps/${var.release_version}/forwarder.yaml"
  destination      = observe_filedrop.aws_filedrop.endpoint[0].s3[0]
  access_point_arn = observe_filedrop.aws_filedrop.endpoint[0].s3[0].arn

  post_install_vars = {
    quick_create_link         = local.quick_create_link
    name                      = local.name
    aws_region                = var.aws_region
    template_url              = local.template_url
    cloudformation_parameters = local.cloudformation_parameters
    destination               = local.destination
    source_bucket_names       = var.source_bucket_names
  }

  cloudformation_parameters = {
    DataAccessPointArn = local.access_point_arn
    DestinationUri     = "s3://${local.destination.bucket}/${local.destination.prefix}"
    SourceBucketNames  = join("", var.source_bucket_names)
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
