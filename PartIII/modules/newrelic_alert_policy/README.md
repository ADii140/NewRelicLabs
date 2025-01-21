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
| [newrelic_alert_policy.policy](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_incident_preference"></a> [incident\_preference](#input\_incident\_preference) | Specifies the incident preference for the resource. Valid options are 'PER\_POLICY', 'PER\_CONDITION', or 'PER\_CONDITION\_AND\_TARGET'. Choose the appropriate value based on the desired incident management strategy. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | A boolean flag indicating whether to enable a synthetic ping to the google.com website. Set to 'true' to perform the ping, or 'false' to disable it. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Policy id |
| <a name="output_name"></a> [name](#output\_name) | Policy name |
<!-- END_TF_DOCS -->