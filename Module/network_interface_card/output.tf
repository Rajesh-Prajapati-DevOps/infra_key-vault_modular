output "nic_id" {
  value = { for k, v in azurerm_network_interface.nic : k => v.id }
}
