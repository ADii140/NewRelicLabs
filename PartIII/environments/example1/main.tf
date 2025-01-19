terraform {
  required_version = ">= 0.12"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
  backend "azurerm" {
    resource_group_name  = "demo-resource-group"
    storage_account_name = "demostorageaccount"
    container_name       = "tfstate"
    key                  = "example1.terraform.tfstate"
  }
}

provider "newrelic" {
  region = "EU"
}

module "synthetic" {
  source      = "../../modules/newrelic_synthetics_monitor"
  google_ping = var.deploy_google_check
  onet_ping   = var.deploy_onet_check
}

module "policy" {
  source              = "../../modules/newrelic_alert_policy"
  name                = "prod"
  incident_preference = "PER_CONDITION_AND_TARGET"
}

module "alert_conditions" {
  source            = "../../modules/newrelic_synthetics_alert_condtion"
  alert_google      = var.deploy_google_check
  alert_onet        = var.deploy_onet_check
  policy_id         = module.policy.id
  monitor_google_id = module.synthetic.google_id
  monitor_onet_id   = module.synthetic.onet_id
}

module "email_destination" {
  source = "../../modules/newrelic_notification_destination"
  name   = "email destination"
  email  = var.email_address
}

module "email_channel" {
  source   = "../../modules/newrelic_notification_channel"
  name     = "email-channel"
  email_id = module.email_destination.id

}

module "workflow" {
  source      = "../../modules/newrelic_workflow"
  name        = "send-email-workflow"
  channel_id  = module.email_channel.id
  policy_name = module.policy.name
}