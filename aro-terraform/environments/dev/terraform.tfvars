## Required for ARO cluster module
openshift_version      = "4.15.20"
master_vm_size         = "Standard_D8s_v3"
worker_vm_size         = "Standard_D4s_v3"
worker_count           = 3
worker_disk_size_gb    = 128
api_server_visibility  = "Public"
ingress_visibility     = "Public"
pod_cidr               = "10.128.0.0/14"
service_cidr           = "172.30.0.0/16"
tags                   = {}
##
# NOTE:
# - arm_client_id, arm_client_secret, arm_tenant_id, arm_subscription_id are for Terraform authentication and should be set ONCE globally (in a root tfvars or as environment variables).
# - aad_client_id, aad_client_secret, aad_tenant_id are for each ARO cluster's Azure AD integration and must be set per cluster in the clusters list below.

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
		aad_client_id     = "0ec0ad90-d8d8-43c1-9a05-d5c2352aae44"
		aad_client_secret = "5XE8Q~rFpjB0mzfXB-ukhaiUmDTf73FRHL_UVa3I"
		aad_tenant_id     = "ffdef3a4-6f16-4a1b-8401-39239d1b4f31"
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
		aad_client_id     = "0ec0ad90-d8d8-43c1-9a05-d5c2352aae44"
		aad_client_secret = "5XE8Q~rFpjB0mzfXB-ukhaiUmDTf73FRHL_UVa3I"
		aad_tenant_id     = "ffdef3a4-6f16-4a1b-8401-39239d1b4f31"
	}
]
