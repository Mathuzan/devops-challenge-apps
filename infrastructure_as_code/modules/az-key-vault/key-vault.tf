provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

data "azurerm_client_config" "current" {}

# Defining the Data_Source
data "azurerm_resource_group" "example" {
  name = var.resource-group-name
}

resource "azurerm_key_vault" "example" {
  name                        = var.key-vault-name
  location                    = var.location
  resource_group_name         = data.azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

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

  lifecycle {
    ignore_changes = [
      purge_protection_enabled
    ]
  }

  tags = {
    Environment = var.tag-environment
    Created-By  = var.tag-CreatedBy
    Project     = var.tag-project
  }
}