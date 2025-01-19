terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_synthetics_monitor" "google" {
  count            = var.google_ping ? 1 : 0
  status           = "ENABLED"
  name             = "Google ping"
  period           = "EVERY_MINUTE"
  uri              = "https://google.com"
  locations_public = ["AWS_EU_WEST_3"]
  type             = "SIMPLE"
}

resource "newrelic_synthetics_monitor" "onet" {
  count            = var.onet_ping ? 1 : 0
  status           = "ENABLED"
  name             = "Onet ping"
  period           = "EVERY_MINUTE"
  uri              = "https://onet.pl"
  locations_public = ["AWS_EU_WEST_3", "AWS_EU_WEST_2"]
  type             = "SIMPLE"
}