location             = "Australia East"
resource_group_name  = "sit722-week08-rg"
acr_name             = "elaf199sit722w8acr"
storage_account_name = "elaf199sit722w8sa"
aks_cluster_name     = "elaf199-sit722-w8-aks"
aks_dns_prefix       = "elaf199-sit722-w8"
aks_node_count       = 3
aks_node_vm_size     = "Standard_D2s_v3"
kubernetes_version   = "1.36"
environment          = "development"

tags = {
  Project     = "KoalaTech Course Platform"
  ManagedBy   = "Terraform"
  Practical   = "Week08"
  Environment = "Development"
}
