variable "name_prefix" {
  type        = string
  description = "A prefix to associate to all the CC VM module resources"
  default     = null
}

variable "resource_tag" {
  type        = string
  description = "A tag to associate to all the CC VM module resources"
  default     = null
}

variable "global_tags" {
  type        = map(string)
  description = "Populate any custom user defined tags from a map"
  default     = {}
}

variable "resource_group" {
  type        = string
  description = "Main Resource Group Name"
}

variable "location" {
  type        = string
  description = "Cloud Connector Azure Region"
}

variable "upload_function_app_zip" {
  type        = bool
  description = "By default, this Terraform will create a new Storage Account/Container/Blob to upload the zip file. The function app will pull from the blobl url to run. Setting this value to false will prevent creation/upload of the blob file"
  default     = true
}

variable "zscaler_cc_function_public_url" {
  type        = string
  description = "Publicly accessible URL path where Function App can pull its zip file build from. This is only required when var.upload_function_app_zip is set to false"
  default     = ""
}

variable "cc_vm_prov_url" {
  type        = string
  description = "Zscaler Cloud Connector Provisioning URL"
}

variable "azure_vault_url" {
  type        = string
  description = "Azure Vault URL"
}

variable "terminate_unhealthy_instances" {
  type        = bool
  description = "Indicate whether detected unhealthy instances are terminated or not."
  default     = true
}

variable "vmss_names" {
  type        = list(string)
  description = "Names of Virtual Machine Scale Sets for Function App to monitor provided as a list"
}

variable "managed_identity_id" {
  type        = string
  description = "ID of the User Managed Identity assigned to Function App"
}

variable "managed_identity_client_id" {
  type        = string
  description = "Client ID of the User Managed Identity for Function App to utilize"
}

variable "managed_identity_principal_id" {
  type        = string
  description = "Object(Principal) ID of the User Managed Identity for Function App to utilize"
  default     = ""
}

variable "existing_storage_account" {
  type        = bool
  description = "Set to True if you wish to use an existing Storage Account to associate with the Function App. Default is false meaning Terraform module will create a new one"
  default     = false
}

variable "existing_storage_account_name" {
  type        = string
  description = "Name of existing Storage Account to associate with the Function App."
  default     = ""
}

variable "existing_storage_account_rg" {
  type        = string
  description = "Resource Group of existing Storage Account to associate with the Function App."
  default     = ""
}