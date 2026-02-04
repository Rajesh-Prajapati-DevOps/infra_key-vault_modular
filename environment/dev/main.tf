module "resource_group" {
  source = "../../Module/Resource_group"
  rg_kv  = var.rg_kvr
}
module "virtual_network" {
  depends_on  = [module.resource_group]
  source      = "../../Module/virtual_network"
  vnet_config = var.vnet_config_kvr
}
module "subnet" {
  source        = "../../Module/subnet"
  depends_on    = [module.virtual_network]
  subnet_config = var.subnet_config_kvr
}
module "public_ip" {
  source           = "../../Module/Public_IP"
  public_ip_config = var.public_ip_config_kvr
}

module "network_interface_card" {
  source        = "../../Module/network_interface_card"
  depends_on    = [module.subnet, module.public_ip]
  nic_config    = var.nic_config_kvr
  subnet_ids    = module.subnet.subnet_id
  public_ip_ids = module.public_ip.public_ip_id
}