terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-new-devanshi"
    storage_account_name  = "remotetfstate1234"
    container_name        = "mytfstatecontainer"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
