module "resource_group" {
  source = "../../Module/Resource_group"
  rg_kv  = var.rg_kvr
}
module "virtual_network" {
  source              = "../../Module/virtual_network"
 vnet_config = var.vnet_config_kvr
}
module "subnet" {
  source        = "../../Module/subnet"
  depends_on = [ module.virtual_network ]
  subnet_config = var.subnet_config_kvr
}
module "public_ip" {
  source        = "../../Module/Public_IP"
  public_ip_config = var.public_ip_config_kvr
}
output "public_ip" {
  value = module.public_ip.public_ip
}