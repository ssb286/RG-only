variable "rg" {}
variable "vnet" {}
variable "subnet" {}


module "rg" {
  source = "../child/RG"
  rg     = var.rg
}

module "vnet" {
  source     = "../child/vnet"
  vnet       = var.vnet
  depends_on = [module.rg]
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../child/subnet"
  subnet     = var.subnet
}

