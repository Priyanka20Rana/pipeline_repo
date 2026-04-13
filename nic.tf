resource "azurerm_network_interface" "nic" {
  name                = "pipeline-nic"
  location            = azurerm_resource_group.pipeline-rg.location
  resource_group_name = azurerm_resource_group.pipeline-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.pipeline-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}