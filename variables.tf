variable "vnet_name" {
  description = "Virtual etwork name"
  type = string
}
variable "vnet_location" {
  description = "Virtual network location"
  type = string
}
variable "rg_name" {
  description = "Resource Group name"
  type = string
}
variable "vnet_address_space" {
  description = "Network address space with CIDR"
  type = list(string)
}
variable "snet_names" {
  description = "Subnets names"
  type = list(string)
}
variable "snet_address_prefixes" {
  description = "Address prefixes of Subnets"
  type = list(string)
}