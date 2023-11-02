# Create Virtual Machines public-ip
resource "azurerm_public_ip" "vms" {
  count               = var.machine_count
  name                = "vms-pip-${count.index}"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Dynamic"
}

# Create Virtual Machine Network Interface
resource "azurerm_network_interface" "vms" {
  count               = var.machine_count
  name                = "vms-nic-${count.index}"
  location            = var.location
  resource_group_name = var.rg_name
  ip_configuration {
    name                          = "vms-ipconfig-${count.index}"
    subnet_id                     = element(var.subnets, count.index)
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = element(azurerm_public_ip.vms.*.id, count.index)
  }
}

