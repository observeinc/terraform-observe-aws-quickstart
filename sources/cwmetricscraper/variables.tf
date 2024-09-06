variable "aws_account_id" {
  type        = string
  description = <<-EOF
      The AWS account ID to collect metrics from.
    EOF
  nullable    = false
}

variable "aws_regions" {
  type        = list(string)
  description = <<-EOF
      A list of AWS regions to collect metrics from.
    EOF
  nullable    = false
}

variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
  nullable    = false
}

variable "datastream" {
  type        = object({ oid = string })
  description = <<-EOF
    Datastream to derive resources from.
  EOF
  nullable    = false
}

variable "name" {
  type        = string
  description = <<-EOF
    Name for terraform module or cloudformation stack. This will determine
    the name of the IAM role Observe will assume. The name must not be modified
    once a data source has been provisioned.
  EOF
  nullable    = false
  default     = "observe-metrics-poller"
}

variable "interval_duration" {
  type        = string
  description = "Time between queries."
  nullable    = false
  default     = "5m"
}

variable "metric_namespaces" {
  type        = list(string)
  description = "List of CloudWatch metric namespaces to collect"
  nullable    = false
  default = [
    "AWS/EC2",
    "AWS/Lambda",
    "AWS/RDS",
    "AWS/SNS",
    "AWS/SQS",
  ]
}

variable "resource_tags" {
  type        = list(string)
  description = "List of resource tags to filter for"
  nullable    = false
  default     = []
}
