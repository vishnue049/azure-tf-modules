resource "azurerm_network_security_group" "nsg" {
  count               = 3 #0 1 2
  name                = element(var.nsg, count.index)
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}
