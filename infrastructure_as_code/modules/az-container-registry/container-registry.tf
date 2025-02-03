# Defining the Data_Source
data "azurerm_resource_group" "resource-group" {
  name = var.resource-group-name
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.resource-group.name
  location            = data.azurerm_resource_group.resource-group.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

  tags = {
    Environment = var.tag-environment
    Created-By  = var.tag-CreatedBy
    Project     = var.tag-project
  }
}


