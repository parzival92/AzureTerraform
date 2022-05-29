provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "keyvault_dev" {
  name                        = var.keyVaultName
  location                    = "West US"
  resource_group_name         = "kvparz"
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}