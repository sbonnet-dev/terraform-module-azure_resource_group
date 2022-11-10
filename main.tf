resource "azurerm_resource_group" "resource_group" {
  name     = lower(format("%s-%s-%s", var.rg_type, var.environment, var.name))
  location = var.location
}