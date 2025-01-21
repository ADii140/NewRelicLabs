<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alert_conditions"></a> [alert\_conditions](#module\_alert\_conditions) | ../../modules/newrelic_synthetics_alert_condtion | n/a |
| <a name="module_email_channel"></a> [email\_channel](#module\_email\_channel) | ../../modules/newrelic_notification_channel | n/a |
| <a name="module_email_destination"></a> [email\_destination](#module\_email\_destination) | ../../modules/newrelic_notification_destination | n/a |
| <a name="module_policy"></a> [policy](#module\_policy) | ../../modules/newrelic_alert_policy | n/a |
| <a name="module_synthetic"></a> [synthetic](#module\_synthetic) | ../../modules/newrelic_synthetics_monitor | n/a |
| <a name="module_workflow"></a> [workflow](#module\_workflow) | ../../modules/newrelic_workflow | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deploy_google_check"></a> [deploy\_google\_check](#input\_deploy\_google\_check) | A boolean flag to enable or disable a synthetic ping monitor for the google.com website in New Relic. Set to 'true' to create the monitor, or 'false' to skip it. | `bool` | n/a | yes |
| <a name="input_deploy_onet_check"></a> [deploy\_onet\_check](#input\_deploy\_onet\_check) | A boolean flag to enable or disable a synthetic ping monitor for the onet.pl website in New Relic. Set to 'true' to create the monitor, or 'false' to skip it. | `bool` | n/a | yes |
| <a name="input_email_address"></a> [email\_address](#input\_email\_address) | The email address to be notified in case of alerts or issues detected by the synthetic monitors in New Relic. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->