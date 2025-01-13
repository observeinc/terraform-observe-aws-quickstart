# Observe example module

This terraform module instantiates data from AWS as
datasets and dashboards in Observe. 

## Usage

```hcl
provider "observe" {}

data "observe_workspace" "default" {
  name = "Default"
}

module "google_quickstart" {
  source = "git@github.com:observeinc/terraform-observe-aws-quickstart.git"
  workspace = data.observe_workspace.default
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_observe"></a> [observe](#requirement\_observe) | ~> 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_observe"></a> [observe](#provider\_observe) | ~> 0.13 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [observe_dashboard.ec2_instances](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dashboard) | resource |
| [observe_dashboard.home](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dashboard) | resource |
| [observe_dashboard.lambda_instances](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dashboard) | resource |
| [observe_dashboard.rds_instances](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dashboard) | resource |
| [observe_dashboard.sqs_services](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dashboard) | resource |
| [observe_dataset.logs](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dataset) | resource |
| [observe_dataset.metrics](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dataset) | resource |
| [observe_dataset.resources](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/dataset) | resource |
| [observe_link.logs](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/link) | resource |
| [observe_link.metrics](https://registry.terraform.io/providers/observeinc/observe/latest/docs/resources/link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_datastream"></a> [datastream](#input\_datastream) | The datastream used to derive resources from. | `object({ dataset = string })` | n/a | yes |
| <a name="input_freshness_default_duration"></a> [freshness\_default\_duration](#input\_freshness\_default\_duration) | Dataset freshness | `string` | `"1m"` | no |
| <a name="input_max_expiry_duration"></a> [max\_expiry\_duration](#input\_max\_expiry\_duration) | Maximum expiry time for resources. | `string` | `"4h"` | no |
| <a name="input_max_time_diff_duration"></a> [max\_time\_diff\_duration](#input\_max\_time\_diff\_duration) | Maximum time difference for processing time window. | `string` | `"4h"` | no |
| <a name="input_name_format"></a> [name\_format](#input\_name\_format) | Format string to use for dataset names. Override to introduce a prefix or suffix. | `string` | `"AWS-Quickstart/%s"` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Workspace to apply module to. | `object({ oid = string, id = string })` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
