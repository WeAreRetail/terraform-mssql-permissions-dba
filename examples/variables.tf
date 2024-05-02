variable "entra_group_name" {
  type        = string
  description = "The Entra group name for the DBA role."
}

variable "sql_database_name" {
  type        = string
  description = "The name of the database"
}

variable "sql_server_fqdn" {
  type        = string
  description = "The fully qualified domain name of the SQL Server"
}

variable "sql_server_port" {
  type        = number
  description = "(Optional) The SQL Server port number. Default to 1433."
  default     = 1433
}
