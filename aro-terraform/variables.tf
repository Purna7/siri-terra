variable "clusters" {
	description = "List of cluster objects to deploy."
	type = list(object({
		name              = string
		resource_group    = string
		location          = string
		vnet_name         = string
		subnet_name       = string
		address_space     = string
		subnet_prefix     = string
		pull_secret       = string
		domain            = string
		aad_client_id     = string
		aad_client_secret = string
		aad_tenant_id     = string
	}))
}
