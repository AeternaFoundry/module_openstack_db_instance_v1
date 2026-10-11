output "db_instance_v1s_id" {
  description = "Map of id values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no id are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "db_instance_v1s_addresses" {
  description = "Map of addresses values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no addresses are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.addresses if v.addresses != null && length(v.addresses) > 0 }
}
output "db_instance_v1s_configuration_id" {
  description = "Map of configuration_id values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no configuration_id are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.configuration_id if v.configuration_id != null && length(v.configuration_id) > 0 }
}
output "db_instance_v1s_database" {
  description = "Map of database values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no database are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.database if v.database != null && length(v.database) > 0 }
}
output "db_instance_v1s_datastore" {
  description = "Map of datastore values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no datastore are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => one(v.datastore) if v.datastore != null && length(v.datastore) > 0 }
}
output "db_instance_v1s_flavor_id" {
  description = "Map of flavor_id values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no flavor_id are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.flavor_id if v.flavor_id != null && length(v.flavor_id) > 0 }
}
output "db_instance_v1s_name" {
  description = "Map of name values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no name are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "db_instance_v1s_network" {
  description = "Map of network values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no network are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.network if v.network != null && length(v.network) > 0 }
}
output "db_instance_v1s_region" {
  description = "Map of region values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no region are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "db_instance_v1s_size" {
  description = "Map of size values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no size are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.size if v.size != null }
}
output "db_instance_v1s_user" {
  description = "Map of user values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no user are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.user if v.user != null && length(v.user) > 0 }
  sensitive   = true
}
output "db_instance_v1s_volume_type" {
  description = "Map of volume_type values across all db_instance_v1s, keyed the same as var.db_instance_v1s except keys with no volume_type are omitted"
  value       = { for k, v in openstack_db_instance_v1.db_instance_v1s : k => v.volume_type if v.volume_type != null && length(v.volume_type) > 0 }
}

