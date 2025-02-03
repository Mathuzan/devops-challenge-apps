### Defining the Data_Source
data "azurerm_resource_group" "workbench-env-name" {
  name = var.workbench-env-name
}

resource "azurerm_service_plan" "az_app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.app_service_plan_location
  resource_group_name = data.azurerm_resource_group.workbench-env-name.name
  os_type             = var.app_service_plan_os_type
  sku_name            = var.app_services_sku_name

  tags = {
    Environment = var.Tag-Environment
    CreatedBy   = var.Tag-Created_by
    Project     = var.Tag-Project
  }
}