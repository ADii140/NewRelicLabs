terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_alert_policy" "policy" {
  name                = var.name
  incident_preference = var.incident_preference
}
