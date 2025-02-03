variable "resource-group-name" {
  description = "Description of the data source variable"
  type        = string
  default     = "default value"
}

variable "psqlflexibleserver-name" {
  description = "Description of the data source variable"
  type        = string
  default     = ""
}

variable "server-version" {
  description = "Server version according to provision"
  type        = string
  default     = "12"
}

variable "sku-name" {
  description = "Server Type according to the usage"
  type        = string
  default     = "B_Standard_B1ms" ## GP_Standard_D2s_v3 - $263.35 (Production Workload)
}

variable "storage-mb" {
  description = "Server storage according to usage"
  type        = number
  default     = 32768
}

variable "administrator_login" {
  description = "Name of the login username for admin"
  type        = string
  default     = "psqladmin"
}

variable "administrator_login_password" {
  description = "Password for the admin login"
  type        = string
  default     = "H@Sh1CoR3!"
}

variable "tag-environment" {
  description = "Defining the TAG-Environment"
  type        = string
  default     = ""
}

###  Enter the TAG value recognition #Tag-Product
variable "tag-CreatedBy" {
  description = "Defining the TAG-Product"
  type        = string
  default     = ""
}

###  Enter the TAG value recognition #Project
variable "tag-project" {
  description = "Defining the TAG-Project"
  type        = string
  default     = ""
}