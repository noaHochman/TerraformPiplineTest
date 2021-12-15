terraform {
  required_version = ">= 0.15"

  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3"
    }
  }
}

resource "azurerm_resource_group" "rgTST-noa" {
  name     = "example-resources"
  location = "West Europe"
}
