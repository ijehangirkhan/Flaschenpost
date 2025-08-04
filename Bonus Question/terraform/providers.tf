terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Allow updates that do not change the major version, to avoid unexpected breaking changes.
      version = "~> 4.38.0"
    }
  }

# Configures the backend to store the state file locally
  backend "local" {
    path = "terraform.tfstate"
  }
}

# Configure the Azure provider
provider "azurerm" {
  features {}
  use_cli         = true
  subscription_id = "${{ values.subscription_id }}"
}