# Read the permissions list from the file permissions.json and create a list of permissions
data "local_file" "permissions" {
  filename = "${path.module}/permissions.yml"
}

locals {
  permissions_deny_list_of_maps = [for permission in yamldecode(data.local_file.permissions.content).database.DENY : {
    permission_name = permission
    state           = "D"
  }]

  db_owner_members = concat([var.entra_group_name], var.db_owner_members)
}

# Create the entra group in the database.
resource "mssqlpermissions_user" "entra_group" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name
  }

  name     = var.entra_group_name
  external = true
}

# Create the custom database role for the DBA group.
resource "mssqlpermissions_database_role" "dba_role" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name
  }

  name = var.role_name
  members = [
    var.entra_group_name
  ]
}

# Assign the role to the db_owner role.
resource "mssqlpermissions_database_role_members" "db_owner_members" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name
  }

  name    = "db_owner"
  members = local.db_owner_members
}

# Deny the custom database role the excessive permissions.
resource "mssqlpermissions_permissions_to_role" "dba_role_deny_permissions" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name
  }

  role_name   = mssqlpermissions_database_role.dba_role.name
  permissions = local.permissions_deny_list_of_maps
}
