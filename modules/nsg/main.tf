resource "azurerm_network_security_group" "nsg" {
  name                = "${var.rg_name}-NSG-${var.location}"
  location            = var.location
  resource_group_name = var.rg_name
}