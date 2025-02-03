###  Enter the Resource Group Name
variable "workbench-env_name" {
  description = "Defining the Resource-Group name"
  type        = string
  default     = "workbench-env"
}

###  Defining variables for Storage account
variable "storageaccountname" {
  default     = "workbench-storageacc"
  description = "Creating Storage account"
  type        = string
}

# ###  Enter the TAG value recognition #Project
# variable "Cors_allowed_origins" {
#   description = "Defining the Allowed Origins #CORS"
#   type        = list
#   default     = [""]
# }

###  Enter the TAG value recognition #Environment
variable "Tag-Environment" {
  description = "Defining the TAG-Environment"
  type        = string
  default     = ""
}

###  Enter the TAG value recognition #Tag-CreatedBy
variable "Tag-CreatedBy" {
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
