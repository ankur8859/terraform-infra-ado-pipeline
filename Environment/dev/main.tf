module "resource_group" {
    source = "../../modules/azurerm_resource_group"
    rgs = var.rgs
}
module "network" {
  source   = "../../modules/azurerm_networking"
  depends_on = [module.resource_group]
  networks = var.networks
}

module "key_vault" {
  source     = "../../modules/azurerm_key_vault"
  depends_on = [module.resource_group]
  key_vault = var.key_vault
  }
module "public_ip" {
  source = "../../modules/azurerm_public_ip"
  depends_on = [module.resource_group]
  public_ips = var.public_ips
} 
module "vm" {
  source = "../../modules/azurerm_compute"
  depends_on = [module.public_ip]
  vms = var.vms
} 