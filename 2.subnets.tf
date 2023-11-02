module "east-subnets" {
  source          = "./modules/subnets"
  rg_name         = module.rg1.rg_name
  vnetname        = module.vnet1.vnet1_name
  new_subnet_cidr = ["10.34.1.0/24", "10.34.2.0/24", "10.34.3.0/24", "10.34.4.0/24", "10.34.5.0/24"]
}


module "west-subnets" {
  source          = "./modules/subnets"
  rg_name         = module.rg1.rg_name
  vnetname        = module.vnet2.vnet1_name
  new_subnet_cidr = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24", "192.168.4.0/24", "192.168.5.0/24"]
}