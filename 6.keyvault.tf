module "kv1" {
  source   = "./modules/keyvault"
  rg_name  = module.rg1.rg_name
  location = module.rg1.rg_location
  kv_name  = "moduletestingkv"
  sku_name = "standard"
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault_access_policy" "azureb34-sp-access" {
  key_vault_id = module.kv1.kv_id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"
  ]
}

resource "azurerm_key_vault_access_policy" "sreeharsha-access" {
  key_vault_id = module.kv1.kv_id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = "9b0d53c3-8571-4780-bd20-1cefec1bd10f"

  secret_permissions = [
    "Get",
    "List",
    "Purge",
    "Recover",
    "Restore",
    "Set",
    "Delete",
    "Recover"
  ]
}