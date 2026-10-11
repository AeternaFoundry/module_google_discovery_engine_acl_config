output "discovery_engine_acl_configs_id" {
  description = "Map of id values across all discovery_engine_acl_configs, keyed the same as var.discovery_engine_acl_configs except keys with no id are omitted"
  value       = { for k, v in google_discovery_engine_acl_config.discovery_engine_acl_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "discovery_engine_acl_configs_idp_config" {
  description = "Map of idp_config values across all discovery_engine_acl_configs, keyed the same as var.discovery_engine_acl_configs except keys with no idp_config are omitted"
  value       = { for k, v in google_discovery_engine_acl_config.discovery_engine_acl_configs : k => one(v.idp_config) if v.idp_config != null && length(v.idp_config) > 0 }
}
output "discovery_engine_acl_configs_location" {
  description = "Map of location values across all discovery_engine_acl_configs, keyed the same as var.discovery_engine_acl_configs except keys with no location are omitted"
  value       = { for k, v in google_discovery_engine_acl_config.discovery_engine_acl_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "discovery_engine_acl_configs_name" {
  description = "Map of name values across all discovery_engine_acl_configs, keyed the same as var.discovery_engine_acl_configs except keys with no name are omitted"
  value       = { for k, v in google_discovery_engine_acl_config.discovery_engine_acl_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "discovery_engine_acl_configs_project" {
  description = "Map of project values across all discovery_engine_acl_configs, keyed the same as var.discovery_engine_acl_configs except keys with no project are omitted"
  value       = { for k, v in google_discovery_engine_acl_config.discovery_engine_acl_configs : k => v.project if v.project != null && length(v.project) > 0 }
}

