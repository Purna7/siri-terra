clusters = [
  {
    name              = "stage-aro-cluster-1"
    resource_group    = "stage-rg-1"
    location          = "eastus"
    vnet_name         = "stage-vnet-1"
    subnet_name       = "stage-subnet-1"
    address_space     = "10.2.0.0/16"
    subnet_prefix     = "10.2.1.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "stage1.example.com"
    # aad_client_id     = "<replace-with-client-id>"
    # aad_client_secret = "<replace-with-client-secret>"
    # aad_tenant_id     = "<replace-with-tenant-id>"
  },
  {
    name              = "stage-aro-cluster-2"
    resource_group    = "stage-rg-2"
    location          = "eastus2"
    vnet_name         = "stage-vnet-2"
    subnet_name       = "stage-subnet-2"
    address_space     = "10.2.2.0/16"
    subnet_prefix     = "10.2.3.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "stage2.example.com"
    # aad_client_id     = "<replace-with-client-id>"
    # aad_client_secret = "<replace-with-client-secret>"
    # aad_tenant_id     = "<replace-with-tenant-id>"
  }
]
