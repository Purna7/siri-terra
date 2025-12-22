terraform {
  backend "azurerm" {
    resource_group_name  = "<replace-with-tfstate-rg>"
    storage_account_name = "<replace-with-tfstate-sa>"
    container_name       = "tfstate"
    key                  = "aro-terraform.tfstate"
  }
}
