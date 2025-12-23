## Required for ARO cluster module
openshift_version     = "4.19.20"
master_vm_size        = "Standard_D8s_v3"
worker_vm_size        = "Standard_D4s_v3"
worker_count          = 3
worker_disk_size_gb   = 128
api_server_visibility = "Public"
ingress_visibility    = "Public"
pod_cidr              = "10.128.0.0/14"
service_cidr          = "172.30.0.0/16"
tags                  = {}
clusters = [
  {
    name              = "dev-aro-cluster-1"
    resource_group    = "dev-rg-1"
    location          = "eastus"
    vnet_name         = "dev-vnet-1"
    subnet_name       = "dev-subnet-1"
    address_space     = "10.0.0.0/16"
    subnet_prefix     = "10.0.1.0/24"
    pull_secret       = "dfbfbgfn" # Set this to your pull secret or use environment variable in your Terraform code
    domain            = "dev1.example.com"
    # aad_client_id     = "0ec0ad90-d8d8-43c1-9a05-d5c2352aae44"     # Set via secret or environment variable
    # aad_client_secret = "5XE8Q~rFpjB0mzfXB-ukhaiUmDTf73FRHL_UVa3I" # Set via secret or environment variable
    # aad_tenant_id     = "ffdef3a4-6f16-4a1b-8401-39239d1b4f31"     # Set via secret or environment variable
  }
]
