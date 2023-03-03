terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  # subscription_id : "Ecole By Cap"
  subscription_id = "a177ac1b-f0e1-45e5-a6c4-80266ff85e1d"
}

data "azurerm_resource_group" "GroupeN" {
  name = "GroupeB" # change by Groupe1/Groupe2/...

}






