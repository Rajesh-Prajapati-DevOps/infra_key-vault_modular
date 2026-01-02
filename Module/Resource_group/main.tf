resource "azurerm_resource_group" "rgkv" {
  for_each = var.rg_kv 
  name     = each.value.name
  location = each.value.location

}