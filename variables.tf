variable "database_name" {
  type        = string
  description = "The name of the database"
}

variable "db_owner_members" {
  type        = list(string)
  description = "(optional) Additional members to add to the db_owner role"
  default     = []
}

variable "entra_group_name" {
  type        = string
  description = "The name of the group to add to the database role"
}

variable "role_name" {
  type        = string
  description = "The name of the database role"
  default     = "db_admin"
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
