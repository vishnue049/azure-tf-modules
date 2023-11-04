resource "random_password" "webserverspw" {
  count            = 3
  length           = 16
  special          = true
  override_special = "!@#$"
  min_lower        = 4
  min_numeric      = 4
  min_special      = 4
  min_upper        = 4
}