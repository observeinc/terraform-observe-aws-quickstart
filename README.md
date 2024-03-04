# Observe example module

This is an example terraform module. Feel free to copy.

## Usage

```hcl
data "observe_workspace" "default" {
  name = "Default"
}

data "observe_datastream" "example" {
  workspace = data.observe_workspace.default.oid
  name      = "My First Datastream"
}

module "example" {
  source     = "terraform.observeinc.com/observeinc/example/observe"
  /*
  workspace  = data.observe_workspace.default
  datastream = data.observe_datastream.example
  */
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
| observe_dataset.example | resource |
| observe_datastream.default | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_freshness_overrides"></a> [freshness\_overrides](#input\_freshness\_overrides) | Freshness overrides by dataset. If absent, fall back to freshness\_default | `map(string)` | `{}` | no |
| <a name="input_name_format"></a> [name\_format](#input\_name\_format) | Format string to use for dataset names. Override to introduce a prefix or<br>suffix. | `string` | `"%s"` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Workspace to apply module to. | `object({ oid = string })` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

Apache 2 Licensed. See LICENSE for full details.
