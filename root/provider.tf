terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "RG-Storage"
    storage_account_name = "sarvstorageforbackend"
    container_name       = "stor"
    key                  = "test.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}