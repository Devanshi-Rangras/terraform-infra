resource "azurerm_virtual_network" "my_tf_vnet" {
  name                = "vnet-tf-devanshi"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.my_tf_rg.location
  resource_group_name = azurerm_resource_group.my_tf_rg.name
}