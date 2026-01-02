resource "azurerm_resource_group" "rgkv" {
  for_each = var.rg_kv 
  name     = var.rg_kv.name
  location = var.rg_kv.location

}