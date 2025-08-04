# Creates a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags
}

# Module for creating a storage account and container
module "storage" {
  source                  = "./modules/storage"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
  storage_account_name    = var.storage_account_name
  storage_account_sku     = var.storage_account_sku
  storage_access_tier     = var.storage_access_tier
  storage_account_tags    = var.storage_account_tags
  container_name          = var.container_name
  container_access_type   = var.container_access_type
}