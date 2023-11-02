module "mylb" {
  source              = "Azure/loadbalancer/azurerm"
  resource_group_name = module.rg1.rg_name
  prefix              = module.rg1.rg_name

  remote_port = {
    ssh = ["Tcp", "22"]
  }

  lb_port = {
    http  = ["80", "Tcp", "80"]
    https = ["443", "Tcp", "443"]
  }

  lb_probe = {
    http  = ["Tcp", "80", ""]
    https = ["Tcp", "443", ""]
  }

}