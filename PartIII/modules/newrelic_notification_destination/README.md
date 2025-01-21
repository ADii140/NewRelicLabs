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
| [newrelic_notification_destination.email](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_destination) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | The email address to be used for notifications or other purposes. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the resource to be referenced. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Destination id |
<!-- END_TF_DOCS -->