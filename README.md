# terraform-azure-vnet

[![CircleCI](https://circleci.com/gh/nlarzon/terraform-azure-vnet.svg?style=svg)](https://circleci.com/gh/nlarzon/terraform-azure-vnet)
[![Terraform Module Registry](https://img.shields.io/badge/Terraform%20Module%20Registry-0.9.0-green.svg)](https://registry.terraform.io/modules/nlarzon/vnet/azure/0.9.0)
![Terraform Version](https://img.shields.io/badge/Terraform-0.12.5-green.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

Terraform Module to create Azure VNET and subnets using terraform 0.12

ToDo:
Add subnet creation.

## DDOS Protection Plan

If you are using ddos protection plan option it creates an additional Azure resource group called "NetworkWatcherRG" this is a resource group created by Azure.
In addition terraform is unable to destroy the ddos protection plan so it has to be performed manually.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_ddos\_plan | Option to create an ddos plan | bool | `"false"` | no |
| create\_resource\_group | Option to create a Azure resource group to use for VNET | bool | `"true"` | no |
| ddos\_plan\_name | Name of the ddos plan | string | `"myDDOSplan"` | no |
| ddos\_resource\_tags | Additional(optional) tags for ddos plan | map(string) | `{}` | no |
| resource\_group\_location | Location for resource group See. https://azure.microsoft.com/en-us/global-infrastructure/locations/ | string | `"North Europe"` | no |
| resource\_group\_name | The name of the resource group to use for the VNET, it is used in both cases even if the resource group is created | string | `"myRG"` | no |
| resource\_group\_tags | Additional(optional) tags for resource group | map(string) | `{}` | no |
| vnet\_cidr | The CIDR block for VNET | list | `[ "10.0.0.0/16" ]` | no |
| vnet\_dns\_servers | Optional dns servers to use for VNET | list | `[]` | no |
| vnet\_name | Name of the VNET | string | `"myVNET"` | no |
| vnet\_resource\_tags | Additional(optional) tags for VNET | map(string) | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| ddos\_protection\_plan | Ddos protection plan |
| resource\_group | Resource group for VNET |
| vnet | VNET resource |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
