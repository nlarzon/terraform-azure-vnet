module "simple" {
  source    = "../../"
  vnet_name = "simpleVNET"
  subnets = {
    subnet-1 = {
      name              = "subnet-a"
      cidr              = "10.0.1.0/24",
      service_endpoints = []
    },
    subnet-2 = {
      name              = "subnet-b",
      cidr              = "10.0.2.0/24",
      service_endpoints = ["Microsoft.KeyVault"]
    }
  }
}
