output "vnet" {
  value = module.simple.vnet
}

output "resource_group" {
  value = module.simple.resource_group
}

output "ddos_protection_plan" {
  value = module.simple.ddos_protection_plan
}

output "subnets" {
  value = module.simple.subnets
}
