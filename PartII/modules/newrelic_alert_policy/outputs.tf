output "id" {
  value       = newrelic_alert_policy.policy.id
  description = "Policy id"
}

output "name" {
  value       = newrelic_alert_policy.policy.name
  description = "Policy name"
}