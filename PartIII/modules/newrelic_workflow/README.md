<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_workflow.workflow](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/workflow) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_channel_id"></a> [channel\_id](#input\_channel\_id) | The unique identifier for the email notification channel, typically the email address that will receive alerts or notifications. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | A descriptive name for the resource, used for easy identification and referencing within the configuration. | `string` | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | The name of the alert policy to be associated with this resource, providing context for its purpose in the monitoring setup. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->