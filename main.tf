provider "azurerm" {
  features {
    
  }
}

resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  location = var.vnet_location
  resource_group_name = var.rg_name
  address_space = var.vnet_address_space
}
resource "azurerm_subnet" "snet" {
  count = length(var.snet_names)
  name = var.snet_names[count.index]
  address_prefixes = [var.snet_address_prefixes[count.index]]
  resource_group_name = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}
