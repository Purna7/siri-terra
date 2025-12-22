module "network" {
  source                = "../modules/network"
  vnet_name             = var.vnet_name
  address_space         = var.address_space
  location              = var.location
  resource_group_name   = var.resource_group_name
  master_subnet_name    = var.master_subnet_name
  master_subnet_prefixes = var.master_subnet_prefixes
  worker_subnet_name    = var.worker_subnet_name
  worker_subnet_prefixes = var.worker_subnet_prefixes
}

module "aro" {
  source                = "../modules/aro"
  aro_cluster_name      = var.aro_cluster_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  domain                = var.domain
  openshift_version     = var.openshift_version
  pull_secret           = var.pull_secret
  client_id             = var.client_id
  client_secret         = var.client_secret
  pod_cidr              = var.pod_cidr
  service_cidr          = var.service_cidr
  master_vm_size        = var.master_vm_size
  master_subnet_id      = module.network.master_subnet_id
  worker_vm_size        = var.worker_vm_size
  worker_subnet_id      = module.network.worker_subnet_id
  worker_count          = var.worker_count
  worker_disk_size_gb   = var.worker_disk_size_gb
  apiserver_visibility  = var.apiserver_visibility
  ingress_visibility    = var.ingress_visibility
}

output "aro_console_url" {
  value = module.aro.aro_console_url
}
