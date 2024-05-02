module "dba_permissions" {
  source = "../"

  server_fqdn   = var.sql_server_fqdn
  database_name = var.sql_database_name
  server_port   = var.sql_server_port

  entra_group_name = var.entra_group_name
}
