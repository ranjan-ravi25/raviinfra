terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "rg24"             # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "stg25"         # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "cont25" # Can be passed via `-backend-config="container_name=<container name>"` in the `init` command.
    key                  = "resource.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}




provider "azurerm" {
  features {}
  subscription_id = "3c0d3e39-55e3-464c-b220-26aee31cecb9"
}