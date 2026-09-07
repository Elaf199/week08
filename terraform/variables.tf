variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
  default     = "Australia East"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "acr_name" {
  description = "Globally unique name of the Azure Container Registry"
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique name of the Azure Storage Account"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the Azure Kubernetes Service cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix used by the AKS cluster"
  type        = string
}

variable "aks_node_count" {
  description = "Number of nodes in the default AKS node pool"
  type        = number
  default     = 3

  validation {
    condition     = var.aks_node_count == 3
    error_message = "Task 8.1P requires exactly three AKS nodes."
  }
}

variable "aks_node_vm_size" {
  description = "Virtual machine size used by the AKS nodes"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "kubernetes_version" {
  description = "Supported AKS Kubernetes version"
  type        = string
  default     = "1.36"
}

variable "environment" {
  description = "Environment name applied to resource tags"
  type        = string
  default     = "development"
}

variable "tags" {
  description = "Tags applied to Azure resources"
  type        = map(string)
  default     = {}
}
