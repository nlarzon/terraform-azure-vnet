
resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.resource_group_location

  tags = merge({ "Name" = format("%s-%s", var.resource_group_name, "rg") }, var.resource_group_tags)
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.create_resource_group ? azurerm_resource_group.rg[0].name : var.resource_group_name
  address_space       = var.vnet_cidr
  location            = var.create_resource_group ? azurerm_resource_group.rg[0].location : var.resource_group_location
  dns_servers         = var.vnet_dns_servers

  tags = merge({ "Name" = format("%s", var.vnet_name) }, var.vnet_resource_tags)
}
