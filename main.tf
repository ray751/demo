resource "azurerm_virtual_network" "main" {
    name                = var.vnet_name
    address_space       = var.vnet_address_space
    location            = var.location
    resource_group_name = var.resource_group_name
}

resource "azurerm_subnet" "main" {
    name                 = var.subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.main.name
    address_prefixes     = var.subnet_address_prefixes
}

resource "resource_group_name" "test_resource_group" {
    name     = var.resource_group_name
    location = var.location
  
}

module "virtual_machine" {
  source = "./module/virtual-machine"
  vm_name = var.vm_name
  location = var.location
  resource_group_name = resource_group_name.test_resource_group.name
  vm_size = var.vm_size
  nic_name = var.nic_name
  subnet_id = azurerm_subnet.main.id
}
