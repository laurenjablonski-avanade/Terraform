# Define the location variable
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "West Europe"
}

# Define the resource group name variable
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "testing-terraform-rg"
}

# Define the virtual network name variable
variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  default     = "testing-terraform-vnet"
}

# Define the address space for the virtual network
variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

# Define the subnet name variable
variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "testing-terraform-subnet"
}

# Define the address prefix for the subnet
variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}
