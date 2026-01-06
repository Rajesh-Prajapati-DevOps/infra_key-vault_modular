terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kannu-rg"
    storage_account_name = "prajapatistg"
    container_name       = "backendstorage1"
    key                  = "key-vault.tfstate"
  }

}
provider "azurerm" {
  features {}
  subscription_id = "716491cb-e2f6-4c7c-846f-b7d135de9a1e"
}