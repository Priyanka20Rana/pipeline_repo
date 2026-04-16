terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tf-backend-rg"
    storage_account_name = "tfstatecentral12345"
    container_name = "tfstate"
    key = "prod.terraform.tfstate"
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