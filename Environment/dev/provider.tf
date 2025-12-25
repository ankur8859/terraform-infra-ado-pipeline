terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg"
    storage_account_name = "backendsg1"
    container_name       = "container"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "86cd11f5-4d26-4e93-bfa9-c0b7b2f44cc9"
}