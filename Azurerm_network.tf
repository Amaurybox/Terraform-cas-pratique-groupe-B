
resource "azurerm_virtual_network" "GroupeB" {
  name                = "vnet-GroupeB" 
  resource_group_name = azurerm_resource_group.GroupeB.name
  location            = azurerm_resource_group.GroupeB.location
  address_space       = ["20.0.0.0/16"] 
}

resource "azurerm_subnet" "GroupeB" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.GroupeB.name
  virtual_network_name = azurerm_virtual_network.GroupeB.name
  address_prefixes     = ["20.0.2.0/24"] 
}

