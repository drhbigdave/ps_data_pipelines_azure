module "prd" {
  source                       = "../../modules/data_factory"
  environment_name             = "prd"
  data_factory_count           = 1
  df_rg_location               = "East US"
  infra_key_vault_name         = "drh-infra-keyvault1"
  permanent_infra_rg_name      = "permanent_infra"
  davids_home_ip_secret_name   = "davids-home-ip"
  shanikas_home_ip_secret_name = "shanikas-home-ip"
}
