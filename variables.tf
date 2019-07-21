variable "create_resource_group" {
  description = "Option to create a Azure resource group to use for VNET"
  type        = bool
  default     = true
}

variable "resource_group_name" {
  description = "The name of the resource group to use for the VNET, it is used in both cases even if the resource group is created"
  type        = string
  default     = "myRG"
}

variable "resource_group_location" {
  description = "Location for resource group See. https://azure.microsoft.com/en-us/global-infrastructure/locations/"
  type        = string
  default     = "North Europe"
}

variable "resource_group_tags" {
  description = "Additional tags for resource group"
  type        = map
  default     = {}
}



variable "vnet_cidr" {
  description = "The CIDR block for VNET"
  type        = list
  default     = ["10.0.0.0/16"]
}

variable "vnet_name" {
  description = "Name of the VNET"
  type        = string
  default     = "myVNET"

}

variable "vnet_dns_servers" {
  description = "Optional dns servers to use for VNET"
  type        = list
  default     = []
}

variable "vnet_resource_tags" {
  description = "Optional tags for VNET"
  type        = map
  default     = {}

}
