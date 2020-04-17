module "dev" {
  source = "./environments/dev"
}

module "stg" {
  source = "./environments/stg"
}
module "prd" {
  source = "./environments/prd"
}
