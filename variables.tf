variable "database_name" {
  type        = string
  description = "The name of the database"
}

variable "entra_group_name" {
  type        = string
  description = "The name of the group to add to the database role"
}

variable "server_fqdn" {
  type        = string
  description = "The fully qualified domain name of the SQL Server"
}

variable "server_port" {
  type        = number
  description = "The port number of the SQL Server"
  default     = 1433
}

variable "sql_login" {
  type        = map(string)
  description = "The local login configuration"
  default     = null
}
