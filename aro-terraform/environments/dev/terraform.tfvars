clusters = [
	{
		name              = "dev-aro-cluster-1"
		resource_group    = "dev-rg-1"
		location          = "eastus"
		vnet_name         = "dev-vnet-1"
		subnet_name       = "dev-subnet-1"
		address_space     = "10.0.0.0/16"
		subnet_prefix     = "10.0.1.0/24"
		pull_secret       = "5XE8Q~rFpjB0mzfXB-ukhaiUmDTf73FRHL_UVa3I"
		domain            = "dev1.example.com"
	}
]

