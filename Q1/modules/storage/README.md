<!-- BEGIN_TF_DOCS -->
# Azure Storage Module

> This module provisions the following resources in Azure:
> - A Storage Account
> - A Private Storage Container

## Usage

```hcl
module "storage" {
  source                   = "../modules/storage"
  resource_group_name      = "example-rg"
  resource_group_location  = "West Europe"
  storage_account_name     = "examplestorage"
  storage_account_sku      = "Standard_LRS"
  storage_access_tier      = "Hot"
  container_name           = "private-container"
  container_access_type    = "private"
  storage_account_tags = {
    environment = "dev"
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.12.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 4.38.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_storage_account_tags"></a> [storage\_account\_tags](#input\_storage\_account\_tags) | Tags for the storage account | `map(string)` | n/a | yes |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | Storage container access type | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Storage container name | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Resource group location | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_storage_access_tier"></a> [storage\_access\_tier](#input\_storage\_access\_tier) | Storage access tier | `string` | n/a | yes |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage account name | `string` | n/a | yes |
| <a name="input_storage_account_sku"></a> [storage\_account\_sku](#input\_storage\_account\_sku) | Storage account SKU in the format <Tier>\_<ReplicationType> (e.g., Standard\_LRS, Premium\_ZRS) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_container_id"></a> [container\_id](#output\_container\_id) | The unique identifier of the storage container. |
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | The name of the storage container. |
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | The unique identifier of the storage account. |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | The name of the storage account. |
| <a name="output_storage_account_primary_access_key"></a> [storage\_account\_primary\_access\_key](#output\_storage\_account\_primary\_access\_key) | The primary access key for the storage account. |
| <a name="output_storage_account_primary_blob_endpoint"></a> [storage\_account\_primary\_blob\_endpoint](#output\_storage\_account\_primary\_blob\_endpoint) | The primary blob endpoint for the storage account. |
| <a name="output_storage_account_primary_connection_string"></a> [storage\_account\_primary\_connection\_string](#output\_storage\_account\_primary\_connection\_string) | The primary connection string for the storage account. |
<!-- END_TF_DOCS -->