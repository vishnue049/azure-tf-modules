# data "azurerm_client_config" "currents" {}

# data "azurerm_key_vault" "azureb34kv" {
#   name                = "azureb34kv"
#   resource_group_name = "COMMON-RG"
# }

# resource "azurerm_key_vault_access_policy" "vishnu-access" {
#   key_vault_id = data.azurerm_key_vault.azureb34kv.id
#   tenant_id    = data.azurerm_client_config.currents.tenant_id
#   object_id    = data.azurerm_client_config.currents.object_id

#   secret_permissions = [
#     "Get",
#     "List",
#     "Purge",
#     "Recover",
#     "Restore",
#     "Set",
#     "Delete",
#     "Recover"
#   ]
# }

# resource "azurerm_key_vault_access_policy" "vishnue-access" {
#   key_vault_id = data.azurerm_key_vault.azureb34kv.id
#   tenant_id    = data.azurerm_client_config.currents.tenant_id
#   object_id    = "9b0d53c3-8571-4780-bd20-1cefec1bd10f"

#   secret_permissions = [
#     "Get",
#     "List",
#     "Purge",
#     "Recover",
#     "Restore",
#     "Set",
#     "Delete",
#     "Recover"
#   ]
# }