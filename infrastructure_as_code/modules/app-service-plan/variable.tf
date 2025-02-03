###  Enter the Resource Group Name
variable "workbench-env-name" {
  description = "Defining the Resource-Group name"
  type        = string
  default     = ""
}

###  Enter the App Service Plan Name
variable "app_service_plan_name" {
  description = "Defining the App Service Plan Name"
  type        = string
default     = "rg-appserviceplan"
}

###  Enter the App Service Plan Location
variable "app_service_plan_location" {
  description = "Defining the App Service Plan location"
  type        = string
default     = "UK South"
}

###  Enter the App Service Plan Kind
variable "app_service_plan_os_type" {
  description = "Defining the App Service Plan OS type"
  type        = string
  default     = "Linux"
}

###  Enter the App Service Plan Kind
variable "app_services_sku_name" {
  description = "Defining the App Services sku"
  type        = string
  default     = "B1"
}

###  Enter the TAG value recognition #Environment
variable "Tag-Environment" {
  description = "Defining the TAG-Environment"
  type        = string
  default     = ""
}

###  Enter the TAG value recognition #Tag-Product
variable "Tag-Created_by" {
  description = "Defining the TAG-Product"
  type        = string
  default     = ""
}

###  Enter the TAG value recognition #Project
variable "Tag-Project" {
  description = "Defining the TAG-Project"
  type        = string
  default     = ""
}