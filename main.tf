resource "confluent_identity_pool" "identity_pools" {
  for_each = var.identity_pools

  description    = each.value.description
  display_name   = each.value.display_name
  filter         = each.value.filter
  identity_claim = each.value.identity_claim

  identity_provider {
    id = each.value.identity_provider.id
  }
}

