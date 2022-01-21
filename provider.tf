terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.91.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscriptionID
  client_id       = var.clientID
  client_secret   = var.clientSecret
  tenant_id       = var.tenantID

}

