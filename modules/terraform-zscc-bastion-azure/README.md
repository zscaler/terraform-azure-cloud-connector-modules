# Zscaler Cloud Connector / Azure VM (Bastion Host) Module

This module creates all Azure VM, NSG, and Public IP resources needed to deploy a publicly accessible bastion/jump host for Cloud Connector Greenfield/POV environments.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.7, < 2.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.99.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 2.99.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.bastion-vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.bastion-nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.bastion-nic-association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.bastion-nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.bastion-pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bastion_nsg_source_prefix"></a> [bastion\_nsg\_source\_prefix](#input\_bastion\_nsg\_source\_prefix) | user input for locking down SSH access to bastion to a specific IP or CIDR range | `string` | `"*"` | no |
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Populate any custom user defined tags from a map | `map(string)` | `{}` | no |
| <a name="input_instance_image_offer"></a> [instance\_image\_offer](#input\_instance\_image\_offer) | The Bastion Host CentOS image offer | `string` | `"CentOS"` | no |
| <a name="input_instance_image_publisher"></a> [instance\_image\_publisher](#input\_instance\_image\_publisher) | The Bastion Host CentOS image publisher | `string` | `"OpenLogic"` | no |
| <a name="input_instance_image_sku"></a> [instance\_image\_sku](#input\_instance\_image\_sku) | The Bastion Host CentOS image sku | `string` | `"7.5"` | no |
| <a name="input_instance_image_version"></a> [instance\_image\_version](#input\_instance\_image\_version) | The Bastion Host CentOS image version | `string` | `"latest"` | no |
| <a name="input_instance_size"></a> [instance\_size](#input\_instance\_size) | The Azure image type/size | `string` | `"Standard_B1s"` | no |
| <a name="input_location"></a> [location](#input\_location) | Cloud Connector Azure Region | `string` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | A prefix to associate to all the Bastion Host module resources | `string` | `null` | no |
| <a name="input_public_subnet_id"></a> [public\_subnet\_id](#input\_public\_subnet\_id) | The id of public subnet where the bastion host has to be attached | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Main Resource Group Name | `string` | n/a | yes |
| <a name="input_resource_tag"></a> [resource\_tag](#input\_resource\_tag) | A tag to associate to all the Bastion Host module resources | `string` | `null` | no |
| <a name="input_server_admin_username"></a> [server\_admin\_username](#input\_server\_admin\_username) | Username configured for the Bastion Host root/admin account | `string` | `"centos"` | no |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | SSH Key for instances | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->