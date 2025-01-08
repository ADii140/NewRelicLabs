variable "channel_id" {
  type        = string
  description = "The unique identifier for the email notification channel, typically the email address that will receive alerts or notifications."
}

variable "name" {
  type        = string
  description = "A descriptive name for the resource, used for easy identification and referencing within the configuration."
}

variable "policy_name" {
  type        = string
  description = "The name of the alert policy to be associated with this resource, providing context for its purpose in the monitoring setup."
}