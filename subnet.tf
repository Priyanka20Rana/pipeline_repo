resource "azurerm_subnet" "pipeline-subnet" {
  name                 = "prodsubnet"
  resource_group_name  = azurerm_resource_group.pipeline-rg.name
  virtual_network_name = azurerm_virtual_network.pipeline-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}