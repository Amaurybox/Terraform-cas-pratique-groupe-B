resource "azurerm_resource_group" "GroupeB" {
  name     = "RG-GroupeB"
  location = "West Europe"
}

resource "azurerm_storage_account" "GroupeB" {

  name                     = "storagegroupeb"
  resource_group_name      = azurerm_resource_group.GroupeB.name
  location                 = azurerm_resource_group.GroupeB.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Group = "B"
  }
}