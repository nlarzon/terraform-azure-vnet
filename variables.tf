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


variable "ddos_protection_plan_id" {
  description = "The Resource ID of DDoS Protection Plan"
  type        = string
  default     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/ddosProtectionPlans/testddospplan"
}

variable "ddos_protection_plan_enable" {
  description = "true/false DDoS Protection Plan on Virtual Network"
  type        = bool
  default     = false
}

variable "vnet_resource_tags" {
  description = "Optional tags for VNET"
  type        = map
  default     = {}

}


variable "create_ddos_plan" {
  description = "Option to create a ddos plan for the VNET"
  type        = bool
  default     = false
}

variable "ddos_resource_group_location" {
  description = "The resource group location for ddos_protection"
  type        = string
  default     = "North Europe"
}
variable "ddos_resource_group_name" {
  description = "Name of resourcce group of ddos_protection"
  type        = string
  default     = ""
}

variable "ddos_protection_name" {
  description = "Name of ddos_protection for VNET"
  type        = string
  default     = "myVNETProtection"
}

variable "subnets" {
  default = [
    {
      name           = "a"
      address_prefix = "10.0.1.0/24"
      security_group = ""
    },
    {
      name           = "b"
      address_prefix = "10.0.2.0/24"
      security_group = ""
    },
    {
      name           = "c"
      address_prefix = "10.0.3.0/24"
      security_group = ""
    },
  ]
}


/* variable "subnets" {
  default = []
} */
