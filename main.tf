# Define the provider to use (Azure in this case)
provider "azurerm" {
  features {}
}

# Define a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

# Define a virtual network
resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Define a subnet
#resource "azurerm_subnet" "example" {
  #name                 = var.subnet_name
  #resource_group_name  = var.resource_group_name
  #virtual_network_name = var.vnet_name
  #address_prefixes     = var.subnet_address_prefix
#}

