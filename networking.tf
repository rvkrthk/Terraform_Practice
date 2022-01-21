resource "azurerm_virtual_network" "myvnet" {
  name = var.myvnet
  location = var.myrglocation
  resource_group_name = var.myrgname
  address_space = ["10.0.0.0/16"]

  depends_on = [
    azurerm_resource_group.myrg
  ]
}

resource "azurerm_subnet" "mysubnet" {
  for_each = var.mysubnet
  name = each.key
  resource_group_name = var.myrgname
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes = each.value

  depends_on = [
    azurerm_virtual_network.myvnet
  ]
}

