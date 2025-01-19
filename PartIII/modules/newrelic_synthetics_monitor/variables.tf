variable "google_ping" {
  type        = bool
  description = "A boolean flag indicating whether to enable a synthetic ping to the google.com website. Set to 'true' to perform the ping, or 'false' to disable it."
}

variable "onet_ping" {
  type        = bool
  description = "A boolean flag indicating whether to enable a synthetic ping to the onet.pl website. Set to 'true' to perform the ping, or 'false' to disable it."
}
