module "virtual-machine" {
  source  = "kumarvna/virtual-machine/azurerm"
  version = "2.3.0"
  resource_group_name  = azurerm_resource_group.GroupeB.name
  location             = azurerm_resource_group.GroupeB.location
  virtual_network_name = azurerm_virtual_network.GroupeB.name
  subnet_name          = azurerm_subnet.GroupeB.name
  virtual_machine_name = "VM_groupe_B_ABO"

  # This module support multiple Pre-Defined Linux and Windows Distributions.
  # Check the README.md file for more pre-defined images for WindowsServer, MSSQLServer.
  # Please make sure to use gen2 images supported VM sizes if you use gen2 distributions
  # This module creates a random admin password if `admin_password` is not specified
  # Specify a valid password with `admin_password` argument to use your own password 
  os_flavor                 = "windows"
  windows_distribution_name = "windows2019dc"
  virtual_machine_size      = "Standard_A2_v2"
  admin_username            = "azureadmin"
  admin_password            = "P@$$w0rd1234!"
  instances_count           = 1
}