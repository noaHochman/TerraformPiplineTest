terraform {
  required_version = ">=0.12"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {} #This is required for v2 of the provider even if empty or plan will fail
}

resource "azurerm_resource_group" "rgTST-noa" {
  name     = "example-resources"
  location = "West Europe"
}
