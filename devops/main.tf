terraform {
  required_version = "0.12.10"
  backend "azurerm" {
    resource_group_name  = "placeholder"
    storage_account_name = "placeholder"
    container_name       = "placeholder"
    key                  = "placeholder"
  }
}

provider "azurerm" {
  version = "2.39.0"
  skip_provider_registration = "true"
  features {}
}

locals {
  common_tags = var.tag_pairs
}

resource "azurerm_storage_account" "testst" {
  name                     = format("%s%s", var.sa_name_prefix, var.env)
  resource_group_name      = var.rg
  location                 = "Australia East"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}