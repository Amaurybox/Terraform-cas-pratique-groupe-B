module "virtual-machine" {
  source  = "kumarvna/virtual-machine/azurerm"
  version = "2.3.0"
  resource_group_name  = azurerm_resource_group.GroupeB.name
  location             = azurerm_resource_group.GroupeB.location
  virtual_network_name = azurerm_virtual_network.GroupeB.name
  subnet_name          = azurerm_subnet.GroupeB.name
  virtual_machine_name = "VMABO"
    # This module support multiple Pre-Defined Linux and Windows Distributions.
  # Check the README.md file for more pre-defined images for Ubuntu, Centos, RedHat.
  # Please make sure to use gen2 images supported VM sizes if you use gen2 distributions
  # Specify `disable_password_authentication = false` to create random admin password
  # Specify a valid password with `admin_password` argument to use your own password 
  # To generate SSH key pair, specify `generate_admin_ssh_key = true`
  # To use existing key pair, specify `admin_ssh_key_data` to a valid SSH public key path.  
  os_flavor               = "linux"
  linux_distribution_name = "ubuntu2004"
  virtual_machine_size    = "Standard_B2s"
  generate_admin_ssh_key  = true
  instances_count         = 2
  enable_public_ip_address = false
}
