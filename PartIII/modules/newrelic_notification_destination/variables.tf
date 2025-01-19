variable "email" {
  type        = string
  description = "The email address to be used for notifications or other purposes."

  validation {
    condition     = can(regex("^\\S+@\\S+\\.\\S+$", var.email))
    error_message = "The provided email must be a valid email address."
  }
}

variable "name" {
  type        = string
  description = "The name of the resource to be referenced."
}
