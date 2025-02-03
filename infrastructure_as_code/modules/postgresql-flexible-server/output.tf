# Output server id
output "postgresql-server-id" {
  value = azurerm_postgresql_flexible_server.example.id
}