<!-- BEGIN_TF_DOCS -->
# Q1 Terraform Configuration

> This configuration provisions an Azure Resource Group and utilizes the Storage module to create a Storage Account and Container.

## Usage

```sh
# Initialize Terraform
terraform init

# Review the execution plan
terraform plan --var-file .\flaschenpost-dev.tfvars

# Apply the configuration
terraform apply --var-file .\flaschenpost-dev.tfvars

# Destroy all resources
terraform destroy --var-file .\flaschenpost-dev.tfvars
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 4.38.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.38.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_storage"></a> [storage](#module\_storage) | git:://github.com/ijehangirkhan/flaschenpost/Q1/modules/storage.git | main |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_group_tags"></a> [resource\_group\_tags](#input\_resource\_group\_tags) | Tags for the Azure Resource Group | `map(string)` | <pre>{<br/>  "department": "SRE"<br/>}</pre> | no |
| <a name="input_storage_account_tags"></a> [storage\_account\_tags](#input\_storage\_account\_tags) | Tags for the Storage Account | `map(string)` | <pre>{<br/>  "department": "SRE"<br/>}</pre> | no |
| <a name="input_container_access_type"></a> [container\_access\_type](#input\_container\_access\_type) | Access type for the container (private, blob, container) | `string` | `"private"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of the storage container | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location for the Azure Resource Group | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the Azure Resource Group | `string` | n/a | yes |
| <a name="input_storage_access_tier"></a> [storage\_access\_tier](#input\_storage\_access\_tier) | Access tier of the Storage Account | `string` | `"Hot"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Name of the Azure Storage Account | `string` | n/a | yes |
| <a name="input_storage_account_sku"></a> [storage\_account\_sku](#input\_storage\_account\_sku) | SKU of the Storage Account | `string` | `"Standard_LRS"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Azure Subscription ID | `string` | `"00000000-0000-0000-0000-000000000000"` | no |

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