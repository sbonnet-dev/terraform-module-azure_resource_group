resource "azurerm_resource_group" "resource_group" {
  name     = lower(format("rg-%s-%s-%s", var.project, var.environment, var.name))
  location = var.location

  tags = {
    env       = var.environment
    project   = var.project
    owner     = var.owner
  }
}