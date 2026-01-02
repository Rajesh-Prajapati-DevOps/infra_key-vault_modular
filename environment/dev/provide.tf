terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "kannu_rg"
    storage_account_name = "kannukastorage"
    container_name       = "backendstorage"
    key                  = "key-vault.tfstate"
  }

}
provider "azurerm" {
  features {}
  subscription_id = "987e5914-628e-4e9a-8c8f-d7fa87735002"
}