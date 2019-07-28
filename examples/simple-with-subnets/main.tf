module "simple" {
  source    = "../../"
  vnet_name = "simpleVNET"
  subnets   = [{ "name" : "subnet-a", "cidr" : "10.0.1.0/24" }, { "name" : "subnet-b", "cidr" : "10.0.2.0/24" }, { "name" : "subnet-c", "cidr" : "10.0.3.0/24" }]
}
