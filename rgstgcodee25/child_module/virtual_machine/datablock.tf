data "azurerm_key_vault" "keyv" {
  name                = "kevaultravi"
  resource_group_name = "ravirg"
}
data "azurerm_key_vault_secret" "vmuser" {
  name         = "vmuser"
  key_vault_id = data.azurerm_key_vault.keyv.id
}
data "azurerm_key_vault_secret" "vmpass" {
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.keyv.id
}
