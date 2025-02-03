# Defining the Data_Source
data "azurerm_resource_group" "workbench-dev" {
  name = var.workbench-env_name
}

resource "azurerm_storage_account" "storageaccountname" {
  name                     = var.storageaccountname
  resource_group_name      = data.azurerm_resource_group.workbench-dev.name
  location                 = data.azurerm_resource_group.workbench-dev.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

#   blob_properties {
#     cors_rule {
#       allowed_origins = var.Cors_allowed_origins
#       allowed_headers = ["*"]
#       allowed_methods = ["GET","OPTIONS"]
#       exposed_headers = ["*"]
#       max_age_in_seconds = 200
#     }
#   }

  tags = {
    Environement = var.Tag-Environment
    CreatedBy    = var.Tag-CreatedBy
    Project      = var.Tag-Project
  }
}

