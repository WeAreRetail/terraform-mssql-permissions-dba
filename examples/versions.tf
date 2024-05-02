terraform {
  required_version = ">= 1.7"

  required_providers {
    mssqlpermissions = {
      source  = "WeAreRetail/mssqlpermissions"
      version = ">= 0.1.0, < 1.0"
    }
  }
}
