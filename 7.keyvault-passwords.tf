resource "random_password" "webservers" {
  count            = 3
  length           = 16
  special          = true
  override_special = "!@#$"
  min_lower        = 4
  min_numeric      = 4
  min_special      = 4
  min_upper        = 4
}

# key_vault
resource "azurerm_key_vault_secret" "vm-passwords" {
  count        = 3 # 0 1 2
  name         = "${var.env}-webserver-password-${count.index + 1}"
  value        = element(random_password.webservers.*.result, count.index)
  key_vault_id = module.kv1.kv_id
  depends_on = [
    azurerm_key_vault_access_policy.vishnu-access
  ]
}