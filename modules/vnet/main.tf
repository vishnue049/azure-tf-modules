resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet1_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  address_space       = var.vnet1_cidr
}