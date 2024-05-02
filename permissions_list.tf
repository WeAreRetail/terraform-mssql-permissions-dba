# Read the permissions list from the file permissions.json and create a list of permissions
data "local_file" "permissions" {
  filename = "${path.module}/permissions.yml"
}

locals {
  permissions_list_of_maps = [for permission in yamldecode(data.local_file.permissions.content).database.DENY : {
    permission_name = permission
    state           = "D"
  }]
}
