clusters = [
  {
    name              = "prod-aro-cluster-1"
    resource_group    = "prod-rg-1"
    location          = "eastus"
    vnet_name         = "prod-vnet-1"
    subnet_name       = "prod-subnet-1"
    address_space     = "10.3.0.0/16"
    subnet_prefix     = "10.3.1.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "prod1.example.com"
    # aad_client_id     = "<replace-with-client-id>"
    # aad_client_secret = "<replace-with-client-secret>"
    # aad_tenant_id     = "<replace-with-tenant-id>"
  },
  {
    name              = "prod-aro-cluster-2"
    resource_group    = "prod-rg-2"
    location          = "eastus2"
    vnet_name         = "prod-vnet-2"
    subnet_name       = "prod-subnet-2"
    address_space     = "10.3.2.0/16"
    subnet_prefix     = "10.3.3.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "prod2.example.com"
    # aad_client_id     = "<replace-with-client-id>"
    # aad_client_secret = "<replace-with-client-secret>"
    # aad_tenant_id     = "<replace-with-tenant-id>"
  }
]
