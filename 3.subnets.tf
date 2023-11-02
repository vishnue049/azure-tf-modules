resource "azurerm_subnet" "webservers" {
  name                 = "webservers"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet1_prefix]
}

resource "azurerm_subnet" "appservers" {
  name                 = "appservers"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet2_prefix]
}

resource "azurerm_subnet" "dbservers" {
  name                 = "dbservers"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = [var.subnet3_prefix]
}