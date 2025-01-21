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
| [newrelic_notification_channel.emailchannel](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/notification_channel) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_id"></a> [email\_id](#input\_email\_id) | The email address to be used for notifications or other purposes. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the resource to be referenced. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Channel id |
<!-- END_TF_DOCS -->