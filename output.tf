output "vnet" {
  description = "VNET resource"
  value       = azurerm_virtual_network.vnet
}

output "resource_group" {
  description = "Resource group for VNET"
  value       = length(azurerm_resource_group.rg) > 0 ? azurerm_resource_group.rg[0] : []
}

output "ddos_protection_plan" {
  description = "Ddos protection plan"
  value       = length(azurerm_network_ddos_protection_plan.ddos) > 0 ? azurerm_network_ddos_protection_plan.ddos[0] : []
}

output "subnets" {
  description = "Created subnet resources"
  value       = azurerm_subnet.subnet
}
