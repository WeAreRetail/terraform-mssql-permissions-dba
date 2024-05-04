terraform {
  required_version = ">= 1.7"

  required_providers {

    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
    mssqlpermissions = {
      source  = "WeAreRetail/mssqlpermissions"
      version = ">= 0.1.4, < 1.0"
    }
  }
}
