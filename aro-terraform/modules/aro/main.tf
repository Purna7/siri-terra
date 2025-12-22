resource "azurerm_red_hat_openshift_cluster" "aro" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  cluster_profile {
    pull_secret = var.pull_secret
    domain      = var.domain
  }
  service_principal_profile {
    client_id     = var.aad_client_id
    client_secret = var.aad_client_secret
  }
  aad_profile {
    tenant_id = var.aad_tenant_id
  }
  network_profile {
    vnet_id   = var.vnet_name
    subnet_id = var.subnet_id
  }
}
