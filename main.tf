resource "azurerm_resource_group" "Rg1" {
    name    = "fan1"
    location = "eastus"
}

reosource "azurerm_ressoucre_group" "Rg2" {
    name                  = "fan2"
    location              = "eastus"
}

resource "azurerm_storage_account" "Stg1" {
    depends_on = [azurerm_resource_group.Rg1]
    name                     = "fan1storage"
    resource_group_name      = azurerm_resource_group.Rg1.name
    location                 = azurerm_resource_group.Rg1.location
    account_replication_type = "LRS"
    account_tier             = "Standard"
}
