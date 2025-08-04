terraform {
  # Allow any version of Terraform that is 1.12.0 or later.
  required_version = ">= 1.12.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # Allow any version of Azure Provider that is 4.38.0 or later.
      version = ">= 4.38.0"
    }
  }
}