resource "azurerm_network_security_rule" "webservers-rule-tcp80" {
  name                        = "webservers-rule-tcp80"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.34.1.0/24"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg.0.name
}

resource "azurerm_network_security_rule" "webservers-rule-tcp443" {
  name                        = "webservers-rule-tcp443"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.34.1.0/24"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg.0.name
}

resource "azurerm_network_security_rule" "webservers-to-appservers" {
  name                        = "webservers-to-appservers"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefix       = "10.34.1.0/24"
  destination_address_prefix  = "10.34.2.0/24"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg.1.name
}

resource "azurerm_network_security_rule" "appservers-to-dbservers" {
  name                        = "appservers-to-dbservers"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "3306"
  source_address_prefix       = "10.34.2.0/24"
  destination_address_prefix  = "10.34.3.0/24"
  resource_group_name         = azurerm_resource_group.rg1.name
  network_security_group_name = azurerm_network_security_group.nsg.2.name
}