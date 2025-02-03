output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "login_server" {
  description = "The login server URL of the Azure Container Registry."
  value       = azurerm_container_registry.acr.login_server
}
