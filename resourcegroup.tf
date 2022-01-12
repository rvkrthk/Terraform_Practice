resource "azurerm_resource_group" "myrg" {
  name = var.myrgname
  location = var.myrglocation
}