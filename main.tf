resource "openstack_db_instance_v1" "db_instance_v1s" {
  for_each = var.db_instance_v1s

  name             = each.value.name
  size             = each.value.size
  configuration_id = each.value.configuration_id
  flavor_id        = each.value.flavor_id
  region           = each.value.region
  volume_type      = each.value.volume_type

  datastore {
    type    = each.value.datastore.type
    version = each.value.datastore.version
  }

  dynamic "database" {
    for_each = each.value.database != null ? each.value.database : []
    content {
      charset = database.value.charset
      collate = database.value.collate
      name    = database.value.name
    }
  }

  dynamic "network" {
    for_each = each.value.network != null ? each.value.network : []
    content {
      fixed_ip_v4 = network.value.fixed_ip_v4
      fixed_ip_v6 = network.value.fixed_ip_v6
      port        = network.value.port
      uuid        = network.value.uuid
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "user" {
    for_each = each.value.user != null ? each.value.user : []
    content {
      databases = user.value.databases
      host      = user.value.host
      name      = user.value.name
      password  = user.value.password
    }
  }
}

