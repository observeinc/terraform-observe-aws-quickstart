
variable "workspace" {
  type        = object({ oid = string, id = string })
  description = "Workspace to apply module to."
}

variable "name_format" {
  type        = string
  description = "Format string to use for dataset names. Override to introduce a prefix or suffix."
  default     = "AWS-Quickstart/%s"
}

variable "datastream" {
  type        = object({ dataset = string })
  description = "The datastream used to derive resources from."
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

variable "skip_rematerialization" {
  type        = bool
  description = "Determines if datasets should rematerialize on non-schema changes. Note that schema changes will still result in rematerialization."
  default     = true
}
