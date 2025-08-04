variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "resource_group_location" {
  description = "Resource group location"
  type        = string
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "storage_account_sku" {
  description = "Storage account SKU in the format <Tier>_<ReplicationType> (e.g., Standard_LRS, Premium_ZRS)"
  type        = string
  validation {
    condition     = can(regex("^(Standard|Premium)_(LRS|GRS|RAGRS|ZRS|GZRS|RAGZRS)$", var.storage_account_sku))
    error_message = "storage_account_sku must be in the format <Tier>_<ReplicationType>, e.g., Standard_LRS, Premium_ZRS."
  }
}

variable "storage_access_tier" {
  description = "Storage access tier"
  type        = string
  validation {
    condition     = contains(["Hot", "Cool", "Cold", "Premium"], var.storage_access_tier)
    error_message = "storage_access_tier must be either 'Hot', 'Cool', 'Cold', or 'Premium'."
  }
}

variable "storage_account_tags" {
  description = "Tags for the storage account"
  type        = map(string)
}

variable "container_name" {
  description = "Storage container name"
  type        = string
}

variable "container_access_type" {
  description = "Storage container access type"
  type        = string
  validation {
    condition     = contains(["private", "blob", "container"], var.container_access_type)
    error_message = "container_access_type must be one of 'private', 'blob', or 'container'."
  }
}