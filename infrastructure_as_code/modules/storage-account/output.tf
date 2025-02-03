output "storageacc" {
  value = azurerm_storage_account.storageaccountname.name
}

output "storageacc_accesskey" {
  value = azurerm_storage_account.storageaccountname.primary_connection_string
}

### Getting App_Storage_Connection > Storage account - access keys - Connection string
output "storage_account_primary_connection_string" {
  value = azurerm_storage_account.storageaccountname.primary_connection_string
}



