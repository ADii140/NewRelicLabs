terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}


resource "newrelic_synthetics_alert_condition" "google" {
  count      = var.alert_google ? 1 : 0
  policy_id  = var.policy_id
  name       = "Googe ping failed"
  monitor_id = var.alert_google ? var.monitor_google_id : 0
}

resource "newrelic_synthetics_alert_condition" "onet" {
  count      = var.alert_onet ? 1 : 0
  policy_id  = var.policy_id
  name       = "Onet ping failed"
  monitor_id = var.alert_onet ? var.monitor_onet_id : 0
}