resource "azurerm_redhat_openshift_cluster" "this" {
  name                = var.aro_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name

  cluster_profile {
    domain      = var.domain
    version     = var.openshift_version
    pull_secret = var.pull_secret
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  network_profile {
    pod_cidr     = var.pod_cidr
    service_cidr = var.service_cidr
  }

  master_profile {
    vm_size   = var.master_vm_size
    subnet_id = var.master_subnet_id
  }

  worker_profile {
    name         = "worker"
    vm_size      = var.worker_vm_size
    subnet_id    = var.worker_subnet_id
    count        = var.worker_count
    disk_size_gb = var.worker_disk_size_gb
  }

  apiserver_profile {
    visibility = var.apiserver_visibility
  }

  ingress_profile {
    visibility = var.ingress_visibility
  }
}

output "aro_console_url" {
  value = azurerm_redhat_openshift_cluster.this.console_url
}
