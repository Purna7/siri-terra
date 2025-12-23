resource "azurerm_redhat_openshift_cluster" "aro" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags

  cluster_profile {
    domain      = var.domain
    pull_secret = var.pull_secret
    version     = var.openshift_version
  }

  main_profile {
    vm_size   = var.master_vm_size
    subnet_id = var.subnet_id
  }

  worker_profile {
    vm_size      = var.worker_vm_size
    subnet_id    = var.subnet_id
    node_count   = var.worker_count
    disk_size_gb = var.worker_disk_size_gb
  }

  api_server_profile {
    visibility = var.api_server_visibility
  }

  ingress_profile {
    visibility = var.ingress_visibility
  }

  service_principal {
    client_id     = var.aad_client_id
    client_secret = var.aad_client_secret
  }

  network_profile {
    pod_cidr     = var.pod_cidr
    service_cidr = var.service_cidr
  }
}
