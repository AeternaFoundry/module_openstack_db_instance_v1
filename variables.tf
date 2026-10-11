variable "db_instance_v1s" {
  description = <<EOT
Map of db_instance_v1s, attributes below
Required:
    - name
    - size
    - datastore (block):
        - type (required)
        - version (required)
Optional:
    - configuration_id
    - flavor_id
    - region
    - volume_type
    - database (block):
        - charset (optional)
        - collate (optional)
        - name (required)
    - network (block):
        - fixed_ip_v4 (optional)
        - fixed_ip_v6 (optional)
        - port (optional)
        - uuid (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - user (block):
        - databases (optional)
        - host (optional)
        - name (required)
        - password (optional)
EOT

  type = map(object({
    name             = string
    size             = number
    configuration_id = optional(string)
    flavor_id        = optional(string)
    region           = optional(string)
    volume_type      = optional(string)
    datastore = object({
      type    = string
      version = string
    })
    database = optional(list(object({
      charset = optional(string)
      collate = optional(string)
      name    = string
    })))
    network = optional(list(object({
      fixed_ip_v4 = optional(string)
      fixed_ip_v6 = optional(string)
      port        = optional(string)
      uuid        = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    user = optional(list(object({
      databases = optional(set(string))
      host      = optional(string)
      name      = string
      password  = optional(string)
    })))
  }))
}

