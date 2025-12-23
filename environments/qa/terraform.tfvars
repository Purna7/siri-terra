clusters = [
  {
    name           = "qa-aro-cluster-1"
    resource_group = "qa-rg-1"

    subnet_name       = "qa-subnet-1"
    address_space     = "10.1.0.0/16"
    subnet_prefix     = "10.1.1.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "qa1.example.com"
    # aad_client_id     = "<replace-with-client-id>"
    # aad_client_secret = "<replace-with-client-secret>"
    # aad_tenant_id     = "<replace-with-tenant-id>"
  },
  {
    name              = "qa-aro-cluster-2"
    resource_group    = "qa-rg-2"
    location          = "eastus2"
    vnet_name         = "qa-vnet-2"
    subnet_name       = "qa-subnet-2"
    address_space     = "10.1.2.0/16"
    subnet_prefix     = "10.1.3.0/24"
    pull_secret       = "<replace-with-pull-secret>"
    domain            = "qa2.example.com"
    aad_client_id     = "<replace-with-client-id>"
    aad_client_secret = "<replace-with-client-secret>"
    aad_tenant_id     = "<replace-with-tenant-id>"
  }
]
