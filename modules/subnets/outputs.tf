output all_subnets {
  value       = azurerm_subnet.subnets.*.id
}