variable "deploy_google_check" {
  type        = bool
  description = "A boolean flag to enable or disable a synthetic ping monitor for the google.com website in New Relic. Set to 'true' to create the monitor, or 'false' to skip it."
}

variable "deploy_onet_check" {
  type        = bool
  description = "A boolean flag to enable or disable a synthetic ping monitor for the onet.pl website in New Relic. Set to 'true' to create the monitor, or 'false' to skip it."
}

variable "email_address" {
  type        = string
  description = "The email address to be notified in case of alerts or issues detected by the synthetic monitors in New Relic."
}