provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tf-rg" {
  name     = "${var.prefix}-resources"
  location = var.location
}