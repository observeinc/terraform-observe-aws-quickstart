
variable "workspace" {
  type        = object({ oid = string })
  description = "Workspace to apply module to."
}

variable "name_format" {
  type        = string
  description = <<-EOF
    Format string to use for dataset names. Override to introduce a prefix or
    suffix.
  EOF
  default     = "%s"
}

variable "freshness_overrides" {
  type        = map(string)
  description = "Freshness overrides by dataset. If absent, fall back to freshness_default"
  default     = {}
}

/*
variable "datastream" {
  type        = object({ dataset = string })
  description = <<-EOF
    The datastream used to derive resources from.
  EOF
}

variable "freshness_default_duration" {
  type        = string
  description = "Dataset freshness"
  default     = "1m"
}

variable "max_expiry_duration" {
  type        = string
  description = "Maximum expiry time for resources."
  default     = "4h"
}

variable "max_time_diff_duration" {
  type        = string
  description = "Maximum time difference for processing time window."
  default     = "4h"
}
*/
