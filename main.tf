# Define the provider to use (Azure in this case)
provider "azurerm" {
  features {}
}

# Define a resource group
resource "azurerm_resource_group" "example" {
  name     = "testing-terraform-rg"
  location = "West Europe"
}

# Define a virtual network
resource "azurerm_virtual_network" "example" {
  name                = "testing-terraform-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

# Define a subnet
resource "azurerm_subnet" "example" {
  name                 = "testing-terraform-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}
