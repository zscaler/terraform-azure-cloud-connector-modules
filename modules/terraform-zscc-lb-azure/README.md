# Zscaler Cloud Connector / Azure Load Balancer Module

This module creates a Standard Load Balancer, backend addres pool, LB rules, and LB health probes to be used with Cloud Connector clusters.

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
| [azurerm_lb.cc-lb](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.cc-lb-backend-pool](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_probe.cc-lb-probe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.cc-lb-rule](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/lb_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_global_tags"></a> [global\_tags](#input\_global\_tags) | Populate any custom user defined tags from a map | `map(string)` | `{}` | no |
| <a name="input_http_probe_port"></a> [http\_probe\_port](#input\_http\_probe\_port) | port for Cloud Connector cloud init to enable listener port for HTTP probe from LB | `number` | `50000` | no |
| <a name="input_load_distribution"></a> [load\_distribution](#input\_load\_distribution) | Azure LB load distribution method | `string` | `"SourceIP"` | no |
| <a name="input_location"></a> [location](#input\_location) | Cloud Connector Azure Region | `string` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | A prefix to associate to all the lb module resources | `string` | `null` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Main Resource Group Name | `string` | n/a | yes |
| <a name="input_resource_tag"></a> [resource\_tag](#input\_resource\_tag) | A tag to associate to all the lb module resources | `string` | `null` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet ID for LB Frontend IP placement | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_backend_address_pool"></a> [lb\_backend\_address\_pool](#output\_lb\_backend\_address\_pool) | n/a |
| <a name="output_lb_ip"></a> [lb\_ip](#output\_lb\_ip) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->