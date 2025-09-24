resource "azurerm_mssql_database" "database25" {
  name           = var.database_name
  server_id      = var.server_id
}