variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "Location for the Azure Resource Group"
  type        = string
  default     = "West Europe"
}

variable "resource_group_tags" {
  description = "Tags for the Azure Resource Group"
  type        = map(string)
  default     = {
    department = "SRE"
  }
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "storage_account_sku" {
  description = "SKU of the Storage Account"
  type        = string
  default     = "Standard_LRS"
}

variable "storage_access_tier" {
  description = "Access tier of the Storage Account"
  type        = string
  default     = "Hot"
}

variable "storage_account_tags" {
  description = "Tags for the Storage Account"
  type        = map(string)
  default     = {
    department = "SRE"
  }
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
}

variable "container_access_type" {
  description = "Access type for the container (private, blob, container)"
  type        = string
  default     = "private"
}