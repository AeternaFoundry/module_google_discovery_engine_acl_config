variable "discovery_engine_acl_configs" {
  description = <<EOT
Map of discovery_engine_acl_configs, attributes below
Required:
    - location
Optional:
    - project
    - idp_config (block):
        - external_idp_config (optional, block):
            - workforce_pool_name (optional)
        - idp_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location = string
    project  = optional(string)
    idp_config = optional(object({
      external_idp_config = optional(object({
        workforce_pool_name = optional(string)
      }))
      idp_type = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

