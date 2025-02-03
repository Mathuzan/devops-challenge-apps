###  Enter the Resource Group Name
variable "resource-group-name" {
  description = "Defining the Resource-Group name"
  type        = string
  default     = ""
}

###  Enter the Resource Group Location
variable "location" {
  description = "Defining the Resource-Group location"
  type        = string
  default     = ""
}

###  Enter the key-vault Name
variable "key-vault-name" {
  description = "Defining the Key-vault location"
  type        = string
  default     = ""
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
