resource "azurerm_virtual_network" "vnet1" {
  name                = "${azurerm_resource_group.rg1.name}-vNET1"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = var.vnet1_cidr
}