output "identity_pools_id" {
  description = "Map of id values across all identity_pools, keyed the same as var.identity_pools except keys with no id are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_pools_description" {
  description = "Map of description values across all identity_pools, keyed the same as var.identity_pools except keys with no description are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "identity_pools_display_name" {
  description = "Map of display_name values across all identity_pools, keyed the same as var.identity_pools except keys with no display_name are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "identity_pools_filter" {
  description = "Map of filter values across all identity_pools, keyed the same as var.identity_pools except keys with no filter are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_pools_identity_claim" {
  description = "Map of identity_claim values across all identity_pools, keyed the same as var.identity_pools except keys with no identity_claim are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => v.identity_claim if v.identity_claim != null && length(v.identity_claim) > 0 }
}
output "identity_pools_identity_provider" {
  description = "Map of identity_provider values across all identity_pools, keyed the same as var.identity_pools except keys with no identity_provider are omitted"
  value       = { for k, v in confluent_identity_pool.identity_pools : k => one(v.identity_provider) if v.identity_provider != null && length(v.identity_provider) > 0 }
}

