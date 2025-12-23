locals {
  clusters = var.clusters
}

module "network" {
  for_each            = { for c in local.clusters : c.name => c }
  source              = "./modules/network"
  resource_group_name = each.value.resource_group
  location            = each.value.location
  vnet_name           = each.value.vnet_name
  subnet_name         = each.value.subnet_name
  address_space       = each.value.address_space
  subnet_prefix       = each.value.subnet_prefix
}

module "aro" {
  for_each            = { for c in local.clusters : c.name => c }
  source              = "./modules/aro"
  resource_group_name = each.value.resource_group
  location            = each.value.location
  cluster_name        = each.value.name
  vnet_name           = module.network[each.key].vnet_name
  subnet_id           = module.network[each.key].subnet_id
  pull_secret         = coalesce(try(each.value.pull_secret, null), var.pull_secret)
  domain              = each.value.domain
  aad_client_id       = coalesce(try(each.value.aad_client_id, null), var.aad_client_id)
  aad_client_secret   = coalesce(try(each.value.aad_client_secret, null), var.aad_client_secret)
  aad_tenant_id       = coalesce(try(each.value.aad_tenant_id, null), var.aad_tenant_id)
}
