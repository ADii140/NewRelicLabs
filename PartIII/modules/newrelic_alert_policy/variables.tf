variable "name" {
  type        = string
  description = "A boolean flag indicating whether to enable a synthetic ping to the google.com website. Set to 'true' to perform the ping, or 'false' to disable it."
}

variable "incident_preference" {
  type        = string
  description = "Specifies the incident preference for the resource. Valid options are 'PER_POLICY', 'PER_CONDITION', or 'PER_CONDITION_AND_TARGET'. Choose the appropriate value based on the desired incident management strategy."

  validation {
    condition     = var.incident_preference == "PER_POLICY" || var.incident_preference == "PER_CONDITION" || var.incident_preference == "PER_CONDITION_AND_TARGET"
    error_message = "The incident_preference variable must be one of the following: 'PER_POLICY', 'PER_CONDITION', or 'PER_CONDITION_AND_TARGET'."
  }
}