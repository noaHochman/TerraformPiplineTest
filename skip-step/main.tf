terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_resource_group" "rgTST-noa" {
  name     = var.RG_NAME
  location = "West Europe"
  
    tags = {
    Application = "hafifa"
  }
}
