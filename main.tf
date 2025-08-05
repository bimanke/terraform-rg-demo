resource "azurerm_resource_group" "Rg1" {
    name    = "fan1"
    location = "eastus"
}

resource "azurerm_storage_account" "Stg1" {
    depends_on = [azurerm_resource_group.Rg1]
    name                     = "fan1storage"
    resource_group_name      = azurerm_resource_group.Rg1.name
    location                 = azurerm_resource_group.Rg1.location
    account_replication_type = "LRS"
    account_tier             = "Standard"
}
