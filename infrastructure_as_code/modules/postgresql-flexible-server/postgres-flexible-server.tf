# Defining the Data_Source
data "azurerm_resource_group" "resource-group-name" {
  name = var.resource-group-name
}



resource "azurerm_postgresql_flexible_server" "example" {
  name                   = var.psqlflexibleserver-name
  resource_group_name    = data.azurerm_resource_group.resource-group-name.name
  location               = data.azurerm_resource_group.resource-group-name.location
  version                = var.server-version
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_login_password
  storage_mb             = var.storage-mb
  sku_name               = var.sku-name

  tags = {
    Environment = var.tag-environment
    Created-By  = var.tag-CreatedBy
    Project     = var.tag-project
  }

  lifecycle {
    ignore_changes = [
      # Add the attribute you want to ignore
      zone
    ]
  }
}