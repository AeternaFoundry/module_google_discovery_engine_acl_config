resource "google_discovery_engine_acl_config" "discovery_engine_acl_configs" {
  for_each = var.discovery_engine_acl_configs

  location = each.value.location
  project  = each.value.project

  dynamic "idp_config" {
    for_each = each.value.idp_config != null ? [each.value.idp_config] : []
    content {
      dynamic "external_idp_config" {
        for_each = idp_config.value.external_idp_config != null ? [idp_config.value.external_idp_config] : []
        content {
          workforce_pool_name = external_idp_config.value.workforce_pool_name
        }
      }
      idp_type = idp_config.value.idp_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

