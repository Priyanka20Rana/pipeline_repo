terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "backend-rg"
    storage_account_name = "tfstatebackending"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features{
     resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id ="d35bdc6e-160c-43c0-8640-db1dcc21d896"
}