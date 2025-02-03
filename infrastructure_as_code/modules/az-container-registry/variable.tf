###  Enter the Resource Group Name
variable "resource-group-name" {
  description = "Defining the Resource-Group name"
  type        = string
  default     = ""
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "workbenchdev001"
}

variable "sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Specifies whether the admin user is enabled."
  type        = bool
  default     = false
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
