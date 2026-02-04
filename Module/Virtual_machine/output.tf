output "vm_id" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.id }
}
