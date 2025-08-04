# Creates a storage account
resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = split("_", var.storage_account_sku)[0]
  account_replication_type = split("_", var.storage_account_sku)[1]
  access_tier              = var.storage_access_tier
  tags                     = var.storage_account_tags
}

# Creates a storage container within the storage account
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = var.container_access_type
}