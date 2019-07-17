
resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_network_ddos_protection_plan" "ddos" {
  count               = var.create_ddos_plan ? 1 : 0
  name                = var.ddos_protection_name
  location            = var.create_resource_group ? azurerm_resource_group.rg[0].location : var.ddos_resource_group_location
  resource_group_name = var.create_resource_group ? azurerm_resource_group.rg[0].name : var.ddos_resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.create_resource_group ? azurerm_resource_group.rg[0].name : var.resource_group_name
  address_space       = var.vnet_cidr
  location            = var.create_resource_group ? azurerm_resource_group.rg[0].location : var.resource_group_location
  dns_servers         = var.vnet_dns_servers
  #ddos_protection_plan {
  #  id     = var.ddos_protection_plan_id
  #  enable = var.ddos_protection_plan_enable
  #}

  /*  dynamic "subnet" {
    for_each = [for s in var.subnets : {
      name           = s.name
      prefix         = cidrsubnet(var.vnet_cidr[0], 4, s.netnum)
      security_group = s.security_group
    }]

    content {
      name           = subnet.value.name
      address_prefix = subnet.value.prefix
      security_group = subnet.value.security_group
    }
  } */

  tags = merge({ "Name" = "Shit vnet" }, var.vnet_resource_tags)
}


resource "azurerm_subnet" "subnets" {
  count                = length(var.subnets)
  name                 = var.subnets[count.index].name
  resource_group_name  = var.create_resource_group ? azurerm_resource_group.rg[0].name : var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefix       = var.subnets[count.index].address_prefix

  /*   delegation {
    name = "acctestdelegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  } */
}
