# Create the custom database role for the DBA group.
resource "mssqlpermissions_database_role" "aware_dba" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name

    sql_login = var.sql_login
  }


  name = "aware_dba"
  members = [
    var.entra_group_name
  ]
}

# Assign the role to the db_owner role.
resource "mssqlpermissions_database_role_members" "aware_dba_to_db_owner" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name

    sql_login = var.sql_login
  }

  name = "db_owner"
  members = [
    "dbo", # dbo is built-in db_owner role
    mssqlpermissions_database_role.aware_dba.name
  ]
}

# Deny the custom database role the excessive permissions.
resource "mssqlpermissions_permissions_to_role" "aware_dba_deny_permissions" {

  config = {
    server_fqdn   = var.server_fqdn
    server_port   = var.server_port
    database_name = var.database_name

    sql_login = var.sql_login
  }

  role_name   = mssqlpermissions_database_role.aware_dba.name
  permissions = local.permissions_list_of_maps
}
