module "eastvms" {
  source         = "./modules/vm"
  rg_name        = module.rg1.rg_name
  location       = module.rg1.rg_location
  machine_count  = var.machine_count
  subnets        = module.east-subnets.all_subnets
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
}