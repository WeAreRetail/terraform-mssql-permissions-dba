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
resource "mssqlpermissions_database_role_members" "dba_role_to_db_owner" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name
  }

  name = "db_owner"
  members = [
    "dbo", # dbo is built-in db_owner role - do not remove
    mssqlpermissions_database_role.dba_role.name
  ]
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
