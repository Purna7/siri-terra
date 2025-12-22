variable "arm_client_id" {
	description = "Azure service principal client ID"
	type        = string
}

variable "arm_client_secret" {
	description = "Azure service principal client secret"
	type        = string
	sensitive   = true
}

variable "arm_tenant_id" {
	description = "Azure tenant ID"
	type        = string
}

variable "arm_subscription_id" {
	description = "Azure subscription ID"
	type        = string
}
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
