
# variable "arm_client_id" {
#   description = "Azure service principal client ID"
#   type        = string
# }

# variable "arm_client_secret" {
#   description = "Azure service principal client secret"
#   type        = string
#   sensitive   = true
# }

# variable "arm_tenant_id" {
#   description = "Azure tenant ID"
#   type        = string
# }

# variable "arm_subscription_id" {
#   description = "Azure subscription ID"
#   type        = string
# }
variable "openshift_version" {
  type    = string
  default = "4.15.20"
}
variable "master_vm_size" {
  type    = string
  default = "Standard_D8s_v3"
}
variable "worker_vm_size" {
  type    = string
  default = "Standard_D4s_v3"
}
variable "worker_count" {
  type    = number
  default = 3
}
variable "worker_disk_size_gb" {
  type    = number
  default = 128
}
variable "api_server_visibility" {
  type    = string
  default = "Public"
}
variable "ingress_visibility" {
  type    = string
  default = "Public"
}
variable "pod_cidr" {
  type    = string
  default = "10.128.0.0/14"
}
variable "service_cidr" {
  type    = string
  default = "172.30.0.0/16"
}
variable "tags" {
  type    = map(string)
  default = {}
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
    pull_secret       = optional(string)
    domain            = string
    aad_client_id     = optional(string)
    aad_client_secret = optional(string)
    aad_tenant_id     = optional(string)
  }))
}

variable "pull_secret" {
  description = "ARO pull secret (fallback if not set in cluster object)"
  type        = string
  sensitive   = true
  default     = null
}
variable "aad_client_id" {
  description = "AAD client id (fallback if not set in cluster object)"
  type        = string
  sensitive   = true
  default     = null
}
variable "aad_client_secret" {
  description = "AAD client secret (fallback if not set in cluster object)"
  type        = string
  sensitive   = true
  default     = null
}
variable "aad_tenant_id" {
  description = "AAD tenant id (fallback if not set in cluster object)"
  type        = string
  sensitive   = true
  default     = null
}
