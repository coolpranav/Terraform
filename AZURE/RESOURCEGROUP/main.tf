terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.97.0"
    }
  }
}

provider "azurerm" {
    features {

    }
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = "TF-RG"
  location = "West Europe"
}
