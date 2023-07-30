provider "azurerm" {
    version = "2.92.0"
    subscription_id = var.subscriptionID

    features {}
}

resource "azurerm_resource_group" "hagitalRG" {
    name = var.resourceGroupName
    location = var.location
}