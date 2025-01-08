terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_notification_channel" "emailchannel" {
  name           = var.name
  type           = "EMAIL"
  destination_id = var.email_id
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