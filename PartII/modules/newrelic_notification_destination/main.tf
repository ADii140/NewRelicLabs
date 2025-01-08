terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_notification_destination" "email" {
  name = var.name
  type = "EMAIL"
  property {
    key   = "email"
    value = var.email
  }
}