variable "name_prefix" {
  description = "A prefix to associate to all the module resources"
  default     = "zs"
}

variable "resource_tag" {
  description = "A tag to associate to all the module resources"
  default     = "cloud-connector"
}

variable "deployment_tag" {
  description = "A deployment tag to associate to all the module resources"
  default     = "development"
}

variable "resource_group" {
  description = "Main Resource Group Name"
}

variable "subnet_id" {
  description = "The id of subnet where the workload host has to be attached"
}

variable "server_admin_username" {
  default = "centos"
  type    = string
}

variable "ssh_key" {
  description = "SSH Key for instances"
}

variable "instance_size" {
  description = "The image size"
  default     = "Standard_B1s"
}

variable "instance_image_publisher" {
  description = "The image publisher"
  default     = "OpenLogic"
}

variable "instance_image_offer" {
  description = "The image offer"
  default     = "CentOS"
}

variable "instance_image_sku" {
  description = "The image sku"
  default     = "7.5"
}

variable "instance_image_version" {
  description = "The image version"
  default     = "latest"
}

variable "workload_count" {
  description = "number of Workload VMs to deploy"
  type        = number
  default     = 1
  validation {
    condition     = var.workload_count >= 1 && var.workload_count <= 250
    error_message = "Input workload_count must be a whole number between 1 and 250."
  }
}

variable "global_tags" {
  description = "populate custom user provided tags"
}

variable "location" {
  description = "Azure Region"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers configured for workload VMs."
  type        = list(string)
  default     = []
}