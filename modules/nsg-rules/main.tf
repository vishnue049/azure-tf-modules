resource "azurerm_network_security_rule" "nsg-rule" {
  name                        = var.nsg_rule_name
  priority                    = var.nsg_rule_number
  direction                   = var.in_or_out
  access                      = var.allow_or_deny
  protocol                    = var.tcp_or_udp
  source_port_range           = var.source_port_range #"*"
  destination_port_range      = var.destination_port_range
  source_address_prefix       = var.source_address_prefix #"*"
  destination_address_prefix  = var.destination_address_prefix
  resource_group_name         = var.rg_name
  network_security_group_name = var.network_security_group_name
}

