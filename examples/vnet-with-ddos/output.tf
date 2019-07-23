output "vnet" {
  value = module.vnet-with-ddos.vnet
}

output "resource_group" {
  value = module.vnet-with-ddos.resource_group
}

output "ddos_protection_plan" {
  value = module.vnet-with-ddos.ddos_protection_plan
}
