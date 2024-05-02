# Terraform module for standard DBA permissions

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.5.1 |
| <a name="requirement_mssqlpermissions"></a> [mssqlpermissions](#requirement\_mssqlpermissions) | >= 0.1.0, < 1.0 |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the database | `string` | n/a | yes |
| <a name="input_entra_group_name"></a> [entra\_group\_name](#input\_entra\_group\_name) | The name of the group to add to the database role | `string` | n/a | yes |
| <a name="input_server_fqdn"></a> [server\_fqdn](#input\_server\_fqdn) | The fully qualified domain name of the SQL Server | `string` | n/a | yes |
| <a name="input_server_port"></a> [server\_port](#input\_server\_port) | The port number of the SQL Server | `number` | `1433` | no |
| <a name="input_sql_login"></a> [sql\_login](#input\_sql\_login) | The local login configuration | `map(string)` | `null` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->