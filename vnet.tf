resource "azurerm_virtual_network" "pipeline-vnet" {
  name                = "arjun-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.pipeline-rg.location
  resource_group_name = azurerm_resource_group.pipeline-rg.name
}