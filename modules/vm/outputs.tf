output all_public_ips {
  value       = azurerm_public_ip.vms.*.id
}