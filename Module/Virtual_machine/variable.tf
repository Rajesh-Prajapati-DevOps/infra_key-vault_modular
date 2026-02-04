variable "vm_config" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    size                = string
    admin_username      = string
    admin_password      = string
    nic_key             = string
  }))
}

variable "nic_ids" {
  type = map(string)
}
