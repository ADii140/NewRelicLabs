terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_workflow" "workflow" {
  name = var.name
  destination {
    channel_id = var.channel_id
  }

  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "filter-name"
    type = "FILTER"

    predicate {
      attribute = "accumulations.policyName"
      operator  = "EXACTLY_MATCHES"
      values    = [var.policy_name]
    }

    predicate {
      attribute = "priority"
      operator  = "EQUAL"
      values    = ["CRITICAL"]
    }
  }
}