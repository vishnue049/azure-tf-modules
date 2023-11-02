module "rg1" {
  source      = "./modules/rg"
  rg_name     = "superstar"
  rg_location = "eastus"
  env         = "dev"
  costcenter  = "8080"
}

module "vnet1" {
  source      = "./modules/vnet"
  rg_name     = module.rg1.rg_name
  rg_location = module.rg1.rg_location
  vnet1_name  = "vnet-1"
  vnet1_cidr  = ["10.34.0.0/16"]
}

module "vnet2" {
  source      = "./modules/vnet"
  rg_name     = module.rg1.rg_name
  rg_location = "westus"
  vnet1_name  = "vnet-2"
  vnet1_cidr  = ["192.168.0.0/16"]
  depends_on  = [module.vnet1]
}