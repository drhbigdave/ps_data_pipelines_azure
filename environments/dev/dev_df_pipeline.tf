module "dev" {
  source                       = "../../modules/data_factory"
  environment_name             = "dev"
  df_rg_location               = "East US"
  data_factory_count           = 0
  infra_key_vault_name         = "drh-infra-keyvault1"
  permanent_infra_rg_name      = "permanent_infra"
  davids_home_ip_secret_name   = "davids-home-ip"
  shanikas_home_ip_secret_name = "shanikas-home-ip"
}
output "davids_ip_out_dev" {
  value = module.dev.davids_ip_out
}
