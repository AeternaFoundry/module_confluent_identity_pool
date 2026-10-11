variable "identity_pools" {
  description = <<EOT
Map of identity_pools, attributes below
Required:
    - description
    - display_name
    - filter
    - identity_claim
    - identity_provider (block):
        - id (required)
EOT

  type = map(object({
    description    = string
    display_name   = string
    filter         = string
    identity_claim = string
    identity_provider = object({
      id = string
    })
  }))
}

