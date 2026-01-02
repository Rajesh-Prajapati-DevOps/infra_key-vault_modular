module "resource_group" {
  source = "../../Module/Resource_group"
  rg_kv  = var.rg_kvr
}
module "virtual_network" {
  source              = "../../Module/virtual_network"
 vnet_config = var.vnet_config_kvr
}