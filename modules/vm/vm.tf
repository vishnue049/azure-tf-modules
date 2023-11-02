# Create Virtual Machines
resource "azurerm_linux_virtual_machine" "vms" {
  count                           = var.machine_count
  name                            = "${var.rg_name}-vm-0${count.index + 1}"
  resource_group_name             = var.rg_name
  location                        = var.location
  size                            = var.vm_size
  admin_username                  = var.admin_username
  admin_password                  = var.admin_password
  disable_password_authentication = false
  network_interface_ids = [
    element(azurerm_network_interface.vms.*.id, count.index)
  ]
  #depends_on = [azurerm_key_vault_access_policy.sreeharsha-access]
  os_disk {
    name                 = "vm0${count.index + 1}OSDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = "30"
  }
  identity {
    type = "SystemAssigned"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal-daily"
    sku       = "20_04-daily-lts-gen2"
    version   = "latest"
  }
}
