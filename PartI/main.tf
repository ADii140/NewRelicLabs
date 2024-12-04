terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  api_key    = "XXX"
  region     = "EU"
  account_id = "XXXX"
}

resource "newrelic_synthetics_monitor" "google" {
  status           = "ENABLED"
  name             = "Google ping"
  period           = "EVERY_MINUTE"
  uri              = "https://google.com"
  locations_public = ["AWS_EU_WEST_3"]
  type             = "SIMPLE"
}

resource "newrelic_synthetics_monitor" "onet" {
  status           = "ENABLED"
  name             = "Onet ping"
  period           = "EVERY_MINUTE"
  uri              = "https://onet.pl"
  locations_public = ["AWS_EU_WEST_3", "AWS_EU_WEST_2"]
  type             = "SIMPLE"
}

resource "newrelic_alert_policy" "policy" {
  name                = "prod"
  incident_preference = "PER_CONDITION_AND_TARGET"
}

resource "newrelic_synthetics_alert_condition" "google" {
  policy_id  = newrelic_alert_policy.policy.id
  name       = "Googe ping failed"
  monitor_id = newrelic_synthetics_monitor.google.id
}

resource "newrelic_synthetics_alert_condition" "onet" {
  policy_id  = newrelic_alert_policy.policy.id
  name       = "Onet ping failed"
  monitor_id = newrelic_synthetics_monitor.onet.id
}

resource "newrelic_notification_destination" "email" {
  name = "User email"
  type = "EMAIL"
  property {
    key   = "email"
    value = "PUTYOURSEMAILHERE@domain.com"
  }
}

resource "newrelic_notification_channel" "emailchannel" {
  name           = "email-channel"
  type           = "EMAIL"
  destination_id = newrelic_notification_destination.email.id
  product        = "IINT"

  property {
    key   = "subject"
    value = "{{issueId}}"
  }

  property {
    key   = "customDetailsEmail"
    value = "issue id - {{issueId}}"
  }
}

resource "newrelic_workflow" "workflow" {
  name = "send-email-workflow"
  destination {
    channel_id = newrelic_notification_channel.emailchannel.id
  }

  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "filter-name"
    type = "FILTER"

    predicate {
      attribute = "accumulations.policyName"
      operator  = "EXACTLY_MATCHES"
      values    = [newrelic_alert_policy.policy.name]
    }

    predicate {
      attribute = "priority"
      operator  = "EQUAL"
      values    = ["CRITICAL"]
    }
  }
}