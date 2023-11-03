## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | <=1.5.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | <=4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | <=4.0.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_east-nsg-rules"></a> [east-nsg-rules](#module\_east-nsg-rules) | ./modules/nsg-rules | n/a |
| <a name="module_east-nsg-rules-tcp443"></a> [east-nsg-rules-tcp443](#module\_east-nsg-rules-tcp443) | ./modules/nsg-rules | n/a |
| <a name="module_east-nsg-rules-tcp443-west"></a> [east-nsg-rules-tcp443-west](#module\_east-nsg-rules-tcp443-west) | ./modules/nsg-rules | n/a |
| <a name="module_east-nsg-rules-tcp80-west"></a> [east-nsg-rules-tcp80-west](#module\_east-nsg-rules-tcp80-west) | ./modules/nsg-rules | n/a |
| <a name="module_east-nsg1"></a> [east-nsg1](#module\_east-nsg1) | ./modules/nsg | n/a |
| <a name="module_east-subnets"></a> [east-subnets](#module\_east-subnets) | ./modules/subnets | n/a |
| <a name="module_eastvms"></a> [eastvms](#module\_eastvms) | ./modules/vm | n/a |
| <a name="module_kv1"></a> [kv1](#module\_kv1) | ./modules/keyvault | n/a |
| <a name="module_mylb"></a> [mylb](#module\_mylb) | Azure/loadbalancer/azurerm | n/a |
| <a name="module_rg1"></a> [rg1](#module\_rg1) | ./modules/rg | n/a |
| <a name="module_vnet1"></a> [vnet1](#module\_vnet1) | ./modules/vnet | n/a |
| <a name="module_vnet2"></a> [vnet2](#module\_vnet2) | ./modules/vnet | n/a |
| <a name="module_west-nsg1"></a> [west-nsg1](#module\_west-nsg1) | ./modules/nsg | n/a |
| <a name="module_west-subnets"></a> [west-subnets](#module\_west-subnets) | ./modules/subnets | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault_access_policy.azureb34-sp-access](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_access_policy.vishnu-access](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_access_policy) | resource |
| [azurerm_key_vault_secret.vm-passwords](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) | resource |
| [azurerm_network_security_group.nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_network_security_rule.appservers-to-dbservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_network_security_rule.webservers-rule-tcp443](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_network_security_rule.webservers-rule-tcp80](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_network_security_rule.webservers-to-appservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule) | resource |
| [azurerm_resource_group.rg1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.appservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.dbservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.webservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [random_password.webservers](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_key_vault.azureb34kv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | n/a | `any` | n/a | yes |
| <a name="input_admin_username"></a> [admin\_username](#input\_admin\_username) | n/a | `any` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | n/a | `any` | n/a | yes |
| <a name="input_machine_count"></a> [machine\_count](#input\_machine\_count) | n/a | `any` | n/a | yes |
| <a name="input_nsg"></a> [nsg](#input\_nsg) | n/a | `any` | n/a | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | n/a | `any` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | n/a | `any` | n/a | yes |
| <a name="input_subnet1_prefix"></a> [subnet1\_prefix](#input\_subnet1\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_subnet2_prefix"></a> [subnet2\_prefix](#input\_subnet2\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_subnet3_prefix"></a> [subnet3\_prefix](#input\_subnet3\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | n/a | `any` | n/a | yes |
| <a name="input_vnet1_cidr"></a> [vnet1\_cidr](#input\_vnet1\_cidr) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rg_location"></a> [rg\_location](#output\_rg\_location) | n/a |
| <a name="output_rg_name"></a> [rg\_name](#output\_rg\_name) | n/a |
