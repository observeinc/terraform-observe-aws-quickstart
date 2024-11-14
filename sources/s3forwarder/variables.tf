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

variable "observe_cluster" {
  type        = string
  description = <<-EOF
      The cluster where Observe is installed.
    EOF
}

variable "source_bucket_names" {
  type        = list(string)
  description = <<-EOF
    A list of bucket names our forwarder will be allowed to read from. Use the
    wildcard `*` to allow access to any bucket. In order to ingest data, you
    will need to subscribe the bucket to our forwarder Lambda function after
    successfully installing our integration.
  EOF
  default     = ["*"]
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
  default     = "observe-s3-forwarder-{region}"
}

variable "release_version" {
  type        = string
  description = "Release version to install. See https://github.com/observeinc/aws-sam-apps/releases."
  default     = "latest"
}
