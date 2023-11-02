provider "azurerm" {
  features {}
}

terraform {
  required_version = "<=1.5.7"
  backend "azurerm" {
    resource_group_name  = "RG-1"
    storage_account_name = "n02tfstate"
    container_name       = "tfstate"
    key                  = "n02tf"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<=4.0.0"
    }
  }
}

# Diff between variables.tf and tfvars
# - Variables.tf is where we declare the variables and tfvars is where pass the values