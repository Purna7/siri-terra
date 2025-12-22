variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "cluster_name" { type = string }
variable "vnet_name" { type = string }
variable "subnet_id" { type = string }
variable "pull_secret" { type = string }
variable "domain" { type = string }
variable "aad_client_id" { type = string }
variable "aad_client_secret" { type = string }
variable "aad_tenant_id" { type = string }

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

