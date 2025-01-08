variable "alert_google" {
  type        = bool
  description = "A boolean flag that determines whether to enable monitoring for the google.com website. Set to 'true' to activate the synthetic ping or 'false' to disable it."
}

variable "alert_onet" {
  type        = bool
  description = "A boolean flag that determines whether to enable monitoring for the onet.pl website. Set to 'true' to activate the synthetic ping or 'false' to disable it."
}

variable "policy_id" {
  type        = string
  description = "The unique identifier for the alert policy to which the monitors or alerts will be associated."
}

variable "monitor_google_id" {
  type        = string
  description = "The unique identifier for the synthetic monitor associated with google.com. This ID is used to manage or reference the monitor within the configuration."
}

variable "monitor_onet_id" {
  type        = string
  description = "The unique identifier for the synthetic monitor associated with onet.pl. This ID is used to manage or reference the monitor within the configuration."
}