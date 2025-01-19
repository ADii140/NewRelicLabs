output "google_id" {
  value       = var.google_ping ? newrelic_synthetics_monitor.google[0].id : null
  description = "Google Synthetics ping ID"
}

output "onet_id" {
  value       = var.onet_ping ? newrelic_synthetics_monitor.onet[0].id : null
  description = "Google Synthetics onet ID"
}
