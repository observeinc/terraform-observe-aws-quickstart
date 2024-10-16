variable "aws_account_id" {
  type        = string
  description = <<-EOF
      The AWS account ID to collect data from.
    EOF
}

variable "aws_region" {
  type        = string
  description = <<-EOF
      The AWS region to collect data for.
    EOF
}

variable "enable_config" {
  type        = bool
  description = <<-EOF
    This option will install AWS Config and collect all resource types. If you
    are already collecting AWS Config, disable this option and subscribe your S3
    bucket to our forwarder instead. You can fine tune collection to a subset of
    resource types in the CloudFormation template or Terraform module.
  EOF
  default     = false
}

variable "enable_cloudwatch_metricstream" {
  type        = bool
  description = <<-EOF
    This option will install AWS CloudWatch Metrics stream with a recommended
    set of filters. You can provide further adjustments to collection in the
    CloudFormation template or Terraform module.
  EOF
  default     = false
}

variable "enable_cloudwatch_logs" {
  type        = bool
  description = <<-EOF
    This option will automatically subscribe all your CloudWatch Log Groups to
    Observe. You may further restrict collection to a set of log group name
    prefixes or patterns in the CloudFormation template or Terraform module.
  EOF
  default     = false
}

variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "datastream" {
  type        = object({ oid = string })
  description = <<-EOF
    Datastream to derive resources from.
  EOF
}

variable "name" {
  type        = string
  description = <<-EOF
    Name for terraform module or cloudformation stack. This will determine
    the name of the IAM role and other provisioned resources. The name must not
    be modified once a data source has been provisioned.
  EOF
  default     = "observe-collection"
}

variable "release_version" {
  type        = string
  description = "Release version to install. See https://github.com/observeinc/aws-sam-apps/releases."
  default     = "latest"
}

variable "enable_filedrop" {
  type        = bool
  description = <<-EOF
    Use a Filedrop backend. This feature is in public preview. Defaults (false) to HTTP based ingest.
  EOF
  default     = false
}


