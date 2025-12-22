variable "environment" {
  description = "The environment name (e.g., dev, prod)"
  type        = string
}
variable "location" {
  description = "Azure region for resources"
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}
variable "aro_cluster_name" {
  description = "ARO cluster name"
  type        = string
}
variable "domain" {
  description = "ARO domain name"
  type        = string
}
variable "openshift_version" {
  description = "ARO OpenShift version"
  type        = string
}
variable "pull_secret" {
  description = "Red Hat pull secret"
  type        = string
  sensitive   = true
}
variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
  sensitive   = true
}
variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}
variable "pod_cidr" {
  description = "Pod CIDR for ARO"
  type        = string
}
variable "service_cidr" {
  description = "Service CIDR for ARO"
  type        = string
}
variable "master_vm_size" {
  description = "VM size for ARO master nodes"
  type        = string
}
variable "master_subnet_id" {
  description = "Subnet resource ID for master nodes"
  type        = string
}
variable "worker_vm_size" {
  description = "VM size for ARO worker nodes"
  type        = string
}
variable "worker_subnet_id" {
  description = "Subnet resource ID for worker nodes"
  type        = string
}
variable "worker_count" {
  description = "Number of worker nodes"
  type        = number
}
variable "worker_disk_size_gb" {
  description = "Disk size for worker nodes (GB)"
  type        = number
}
variable "apiserver_visibility" {
  description = "API server visibility (Public/Private)"
  type        = string
}
variable "ingress_visibility" {
  description = "Ingress visibility (Public/Private)"
  type        = string
}
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}
variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}
