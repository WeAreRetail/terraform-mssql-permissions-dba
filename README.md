# Terraform module for standard DBA permissions

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.5.3 |
| <a name="requirement_mssqlpermissions"></a> [mssqlpermissions](#requirement\_mssqlpermissions) | >= 0.1.5, < 1.0 |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database | `string` | n/a | yes |
| <a name="input_entra_group_name"></a> [entra\_group\_name](#input\_entra\_group\_name) | The name of the group to add to the database role | `string` | n/a | yes |
| <a name="input_server_fqdn"></a> [server\_fqdn](#input\_server\_fqdn) | The fully qualified domain name of the SQL Server | `string` | n/a | yes |
| <a name="input_db_owner_members"></a> [db\_owner\_members](#input\_db\_owner\_members) | (optional) Additional members to add to the db\_owner role | `list(string)` | `[]` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the database role | `string` | `"db_admin"` | no |
| <a name="input_server_port"></a> [server\_port](#input\_server\_port) | The port number of the SQL Server | `number` | `1433` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->