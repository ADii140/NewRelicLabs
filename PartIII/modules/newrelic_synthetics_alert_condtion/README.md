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
| [newrelic_synthetics_alert_condition.google](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_alert_condition) | resource |
| [newrelic_synthetics_alert_condition.onet](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_alert_condition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_google"></a> [alert\_google](#input\_alert\_google) | A boolean flag that determines whether to enable monitoring for the google.com website. Set to 'true' to activate the synthetic ping or 'false' to disable it. | `bool` | n/a | yes |
| <a name="input_alert_onet"></a> [alert\_onet](#input\_alert\_onet) | A boolean flag that determines whether to enable monitoring for the onet.pl website. Set to 'true' to activate the synthetic ping or 'false' to disable it. | `bool` | n/a | yes |
| <a name="input_monitor_google_id"></a> [monitor\_google\_id](#input\_monitor\_google\_id) | The unique identifier for the synthetic monitor associated with google.com. This ID is used to manage or reference the monitor within the configuration. | `string` | n/a | yes |
| <a name="input_monitor_onet_id"></a> [monitor\_onet\_id](#input\_monitor\_onet\_id) | The unique identifier for the synthetic monitor associated with onet.pl. This ID is used to manage or reference the monitor within the configuration. | `string` | n/a | yes |
| <a name="input_policy_id"></a> [policy\_id](#input\_policy\_id) | The unique identifier for the alert policy to which the monitors or alerts will be associated. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->