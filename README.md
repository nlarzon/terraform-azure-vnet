# terraform-azure-vnet

Terraform Module to create Azure VNET and subnets using terraform 0.12

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_ddos\_plan | Option to create a ddos plan for the VNET | bool | `"false"` | no |
| create\_resource\_group | Option to create a Azure resource group to use for VNET | bool | `"true"` | no |
| ddos\_protection\_name | Name of ddos_protection for VNET | string | `"myVNETProtection"` | no |
| ddos\_protection\_plan\_enable | true/false DDoS Protection Plan on Virtual Network | bool | `"false"` | no |
| ddos\_protection\_plan\_id | The Resource ID of DDoS Protection Plan | string | `"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/ddosProtectionPlans/testddospplan"` | no |
| ddos\_resource\_group\_location | The resource group location for ddos_protection | string | `"North Europe"` | no |
| ddos\_resource\_group\_name | Name of resourcce group of ddos_protection | string | `""` | no |
| resource\_group\_location | Location for resource group See. https://azure.microsoft.com/en-us/global-infrastructure/locations/ | string | `"North Europe"` | no |
| resource\_group\_name | The name of the resource group to use for the VNET, it is used in both cases even if the resource group is created | string | `"myRG"` | no |
| subnets |  | list | `[ { "address_prefix": "10.0.1.0/24", "name": "a", "security_group": "" }, { "address_prefix": "10.0.2.0/24", "name": "b", "security_group": "" }, { "address_prefix": "10.0.3.0/24", "name": "c", "security_group": "" } ]` | no |
| vnet\_cidr | The CIDR block for VNET | list | `[ "10.0.0.0/16" ]` | no |
| vnet\_dns\_servers | Optional dns servers to use for VNET | list | `[]` | no |
| vnet\_name | Name of the VNET | string | `"myVNET"` | no |
| vnet\_resource\_tags | Optional tags for VNET | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| vnet | VNET resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
