output "vnet" {
  description = "VNET resource"
  value       = azurerm_virtual_network.vnet
}

output "resource_group" {
  description = "Resource group for VNET"
  value       = azurerm_resource_group.rg
}
