# Creates a resource group
resource "azurerm_resource_group" "rg" {
  name     = "${{ values.resource_group_name }}"
  location = "${{ values.resource_group_location }}"
  tags     = "${{ values.resource_group_tags }}"
}

# Module for creating a storage account and container
module "storage" {
  source                  = "git::https://github.com/ijehangirkhan/flaschenpost.git//Q1/modules/storage"
  resource_group_name     = "${{ values.resource_group_name }}"
  resource_group_location = "${{ values.resource_group_location }}"
  storage_account_name    = "${{ values.storage_account_name }}"
  storage_account_sku     = "${{ values.storage_account_sku }}"
  storage_access_tier     = "${{ values.storage_access_tier }}"
  storage_account_tags    = "${{ values.storage_account_tags }}"
  container_name          = "${{ values.container_name }}"
  container_access_type   = "${{ values.container_access_type }}"
}