resource "azurerm_subnet" "subnets" {
  count                = length(var.new_subnet_cidr)
  name                 = "${var.rg_name}-Subnet-${count.index + 1}"
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnetname
  address_prefixes     = [element(var.new_subnet_cidr, count.index)]
}