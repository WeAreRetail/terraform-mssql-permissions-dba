terraform {
  required_version = ">= 1.7"

  required_providers {

    local = {
      source  = "hashicorp/local"
      version = ">= 2.0, < 3.0"
    }
    mssqlpermissions = {
      source  = "WeAreRetail/mssqlpermissions"
      version = ">= 1.0, < 2.0"
    }
  }
}
