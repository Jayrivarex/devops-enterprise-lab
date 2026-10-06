variable "resource_group_name" {
  type        = string
  description = "Nombre del Resource Group del sandbox asignado."
  default     = "1-82432339-playground-sandbox"
}

variable "location" {
  type        = string
  description = "Región de Azure para el despliegue."
  default     = "eastus2"
}

variable "environment" {
  type        = string
  description = "Entorno lógico del despliegue."
  default     = "dev"
}

variable "enable_aks" {
  type        = bool
  description = "Feature flag to enable or disable AKS deployment based on Azure sandbox restrictions."
  default     = false
}
