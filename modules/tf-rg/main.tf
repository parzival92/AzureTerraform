terraform {
  required_providers {
    azurerm = ">= 2.8.0" // For move to address_prefixes
  }
}


resource "random_integer" "priority" {
  min = 1
  max = 50000
 
}


resource "azurerm_resource_group" "rg" {
  name     = "rg-${random_integer.priority.result}"
  location =  var.location
}