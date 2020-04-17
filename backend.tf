terraform {
  backend "azurerm" {
    resource_group_name  = "permanent_infra"
    storage_account_name = "drhremotestate"
    container_name       = "tf-remote-state"
    key                  = "ps_pipelines.terraform.tfstate"
  }
}
