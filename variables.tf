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
  description = "Additional(optional) tags for resource group"
  type        = map(string)
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
  description = "Additional(optional) tags for VNET"
  type        = map(string)
  default     = {}
}

variable "ddos_plan_name" {
  description = "Name of the ddos plan"
  type        = string
  default     = "myDDOSplan"
}

variable "create_ddos_plan" {
  description = "Option to create an ddos plan"
  type        = bool
  default     = false
}

variable "ddos_resource_tags" {
  description = "Additional(optional) tags for ddos plan"
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "Map of subnet objects. name, cidr, and service_endpoints supported"
  type = map(object({
    name              = string
    cidr              = string
    service_endpoints = list(string)
  }))
  default = {}
}
