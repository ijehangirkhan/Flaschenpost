output "storage_account_id" {
  description = "The unique identifier of the storage account."
  value       = azurerm_storage_account.storage.id
}

output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.storage.name
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}

output "storage_account_primary_connection_string" {
  description = "The primary connection string for the storage account."
  value       = azurerm_storage_account.storage.primary_connection_string
  sensitive   = true
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint for the storage account."
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}

output "container_id" {
  description = "The unique identifier of the storage container."
  value       = azurerm_storage_container.container.id
}

output "container_name" {
  description = "The name of the storage container."
  value       = azurerm_storage_container.container.name
}