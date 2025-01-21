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
| [newrelic_synthetics_monitor.google](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_monitor) | resource |
| [newrelic_synthetics_monitor.onet](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_google_ping"></a> [google\_ping](#input\_google\_ping) | A boolean flag indicating whether to enable a synthetic ping to the google.com website. Set to 'true' to perform the ping, or 'false' to disable it. | `bool` | n/a | yes |
| <a name="input_onet_ping"></a> [onet\_ping](#input\_onet\_ping) | A boolean flag indicating whether to enable a synthetic ping to the onet.pl website. Set to 'true' to perform the ping, or 'false' to disable it. | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_google_id"></a> [google\_id](#output\_google\_id) | Google Synthetics ping ID |
| <a name="output_onet_id"></a> [onet\_id](#output\_onet\_id) | Google Synthetics onet ID |
<!-- END_TF_DOCS -->