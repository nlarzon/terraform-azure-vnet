# terraform-azure-vnet

Terraform Module to create Azure VNET and subnets using terraform 0.12

No support for DDOS in this first version, no subnets created.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_resource\_group | Option to create a Azure resource group to use for VNET | bool | `"true"` | no |
| resource\_group\_location | Location for resource group See. https://azure.microsoft.com/en-us/global-infrastructure/locations/ | string | `"North Europe"` | no |
| resource\_group\_name | The name of the resource group to use for the VNET, it is used in both cases even if the resource group is created | string | `"myRG"` | no |
| resource\_group\_tags | Additional tags for resource group | map | `{}` | no |
| vnet\_cidr | The CIDR block for VNET | list | `[ "10.0.0.0/16" ]` | no |
| vnet\_dns\_servers | Optional dns servers to use for VNET | list | `[]` | no |
| vnet\_name | Name of the VNET | string | `"myVNET"` | no |
| vnet\_resource\_tags | Optional tags for VNET | map | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource\_group | Resource group for VNET |
| vnet | VNET resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
