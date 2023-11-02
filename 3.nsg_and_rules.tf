module "east-nsg1" {
  source   = "./modules/nsg"
  rg_name  = module.rg1.rg_name
  location = module.rg1.rg_location
}

module "west-nsg1" {
  source   = "./modules/nsg"
  rg_name  = module.rg1.rg_name
  location = "westus"
}

module "east-nsg-rules" {
  source                      = "./modules/nsg-rules"
  nsg_rule_name               = "tcp80"
  nsg_rule_number             = "100"
  in_or_out                   = "Inbound"
  allow_or_deny               = "Allow"
  tcp_or_udp                  = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.33.0.0/16"
  rg_name                     = module.rg1.rg_name
  network_security_group_name = module.east-nsg1.nsg_name
}

module "east-nsg-rules-tcp443" {
  source                      = "./modules/nsg-rules"
  nsg_rule_name               = "tcp443"
  nsg_rule_number             = "200"
  in_or_out                   = "Inbound"
  allow_or_deny               = "Allow"
  tcp_or_udp                  = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "10.33.0.0/16"
  rg_name                     = module.rg1.rg_name
  network_security_group_name = module.east-nsg1.nsg_name
}

#################FOR WESTUS####################
module "east-nsg-rules-tcp80-west" {
  source                      = "./modules/nsg-rules"
  nsg_rule_name               = "tcp80"
  nsg_rule_number             = "100"
  in_or_out                   = "Inbound"
  allow_or_deny               = "Allow"
  tcp_or_udp                  = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "192.168.0.0/16"
  rg_name                     = module.rg1.rg_name
  network_security_group_name = module.west-nsg1.nsg_name
}

module "east-nsg-rules-tcp443-west" {
  source                      = "./modules/nsg-rules"
  nsg_rule_name               = "tcp443"
  nsg_rule_number             = "200"
  in_or_out                   = "Inbound"
  allow_or_deny               = "Allow"
  tcp_or_udp                  = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "192.168.0.0/16"
  rg_name                     = module.rg1.rg_name
  network_security_group_name = module.west-nsg1.nsg_name
}


