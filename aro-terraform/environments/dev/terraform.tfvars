clusters = [
	{
		name              = "dev-aro-cluster-1"
		resource_group    = "dev-rg-1"
		location          = "eastus"
		vnet_name         = "dev-vnet-1"
		subnet_name       = "dev-subnet-1"
		address_space     = "10.0.0.0/16"
		subnet_prefix     = "10.0.1.0/24"
		pull_secret       = "<replace-with-pull-secret>"
		domain            = "dev1.example.com"
		aad_client_id     = "<replace-with-client-id>"
		aad_client_secret = "<replace-with-client-secret>"
		aad_tenant_id     = "<replace-with-tenant-id>"
	},
	{
		name              = "dev-aro-cluster-2"
		resource_group    = "dev-rg-2"
		location          = "eastus2"
		vnet_name         = "dev-vnet-2"
		subnet_name       = "dev-subnet-2"
		address_space     = "10.0.2.0/16"
		subnet_prefix     = "10.0.3.0/24"
		pull_secret       = "<replace-with-pull-secret>"
		domain            = "dev2.example.com"
		aad_client_id     = "<replace-with-client-id>"
		aad_client_secret = "<replace-with-client-secret>"
		aad_tenant_id     = "<replace-with-tenant-id>"
	}
]
