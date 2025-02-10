variable "subscription_id" {
  description = "The subscription ID for the Azure account"
  type        = string
}

variable "client_id" {
  description = "The client ID for the Azure Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the Azure Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The tenant ID for the Azure account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "aks-resource-group"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "aks-cluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "akscluster"
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the VMs in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "environment" {
  description = "The environment tag for the resources"
  type        = string
  default     = "Development"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
  default     = "federicoaksregistry"
}