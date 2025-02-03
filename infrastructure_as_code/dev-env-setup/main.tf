### DEV environment -Mathushan
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.24.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "= 1.5.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-statefile-dev-001" ### All the State file in the same RG.
    storage_account_name = "devstate001" ### All the State file in the same Storage Account.
    container_name       = "envdevfile"
    key                  = "Dev-state-env-file.tfstate"
  }
}

# Configure the Microsoft Azure Providers
provider "azurerm" {
  features {}
}

# provider "azuread" {
#   use_microsoft_graph = true
# }

### Data value is hardcoded - It is linked to all the modules from here
data "azurerm_resource_group" "workbench-env" {
  name = "rg-wireapps-dev-001"
}

###  Provision Storage account 
module "storage_account" {
  source = "../modules/storage-account"

  workbench-env_name           = data.azurerm_resource_group.workbench-env.name
  storageaccountname           = "stworkbenchdev002"
#   Cors_allowed_origins          = ["https://****.b2clogin.com"] # Tenant ID
  Tag-Environment               = var.Environment
  Tag-CreatedBy                 = var.CreatedBy
  Tag-Project                   = var.Project
}

# Add a module to provision azure key-vault
module "az-key-vault" {
  source = "../modules/az-key-vault"

  resource-group-name = data.azurerm_resource_group.workbench-env.name
  location            = data.azurerm_resource_group.workbench-env.location
  key-vault-name      = "vault-dev-uksouth-001"
  tag-environment     = var.Environment
  tag-CreatedBy       = var.CreatedBy
  tag-project         = var.Project
}


### Provision azure container registry
module "acr" {
  source = "../modules/az-container-registry"

  resource-group-name = data.azurerm_resource_group.workbench-env.name
  acr_name            = "workbenchdev001"
  sku                 = "Basic"
  admin_enabled       = true
  tag-environment     = var.Environment
  tag-CreatedBy       = var.CreatedBy
  tag-project         = var.Project
}

# Add a module to provision app service plan
module "az_app_service_plan" {
  source = "../modules/app-service-plan"

  workbench-env-name        = data.azurerm_resource_group.workbench-env.name
  app_service_plan_name     = "asp-workbench-dev-uksouth-001"
  app_service_plan_location = "UK South"
  app_service_plan_os_type  = "Linux"
  app_services_sku_name     = "B1"
  Tag-Environment           = var.Environment
  Tag-Created_by            = var.CreatedBy
  Tag-Project               = var.Project
}

###  Provision PostgreSQL-Server
module "postgresql-server" {
  source = "../modules/postgresql-flexible-server"

  resource-group-name          = data.azurerm_resource_group.workbench-env.name
  psqlflexibleserver-name      = "psql-workbench-dev-001"
  administrator_login          = "psqladmin"
  administrator_login_password = "H@Sh1CoR3!"
  tag-environment              = var.Environment
  tag-CreatedBy                = var.CreatedBy
  tag-project                  = var.Project
}



