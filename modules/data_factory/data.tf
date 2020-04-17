data "azurerm_client_config" "current" {}

data "azurerm_key_vault" "infra_kv" {
  name                = var.infra_key_vault_name
  resource_group_name = var.permanent_infra_rg_name
}
/*
output "vault_id" {
  value = data.azurerm_key_vault.infra_kv.id
}
*/
data "azurerm_key_vault_secret" "davids_home_ip" {
  name         = var.davids_home_ip_secret_name
  key_vault_id = data.azurerm_key_vault.infra_kv.id
}

data "azurerm_key_vault_secret" "shanikas_home_ip" {
  name         = var.shanikas_home_ip_secret_name
  key_vault_id = data.azurerm_key_vault.infra_kv.id
}
