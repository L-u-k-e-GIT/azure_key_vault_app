

variable "MD_KV_NAME" {
  description = "Key Vault Name"
  type        = string
  default     = ""

}

variable "MD_LOCATION" {
  description = "Key Vault region"
  type        = string
  default     = ""

}

variable "MD_RG_NAME" {
  description = "Key Vault Resource Group"
  type        = string
  default     = ""

}


variable "MD_PROJECT_NAME" {
  description = "Prefix foor project name"
  type        = string
  default     = ""

}

variable "MD_TERRAFORM_SERVICE_ID" {
  description = "id og terrafomr-service user"
  type        = string
  default     = ""
}


variable "MD_SUBSCRIPTION_PREFIX_SHARED" {
  description = "Prefix for subscription name"
  type        = string
  default     = ""

}



variable "MD_ARM_TENANT_ID" {
  description = "Tenand Id"
  type        = string
  default     = ""

}

variable "MD_PE_NAME" {
  description = "Private Endpoint Name"
  type        = string
  default     = ""

}

variable "MD_PESC_NAME" {
  description = "Private Endpoint Service Connection Name"
  type        = string
  default     = ""

}

variable "MD_SUBNET_ID" {
  description = "Subnet ID for private endpoint"
  type        = string
  default     = ""

}

variable "MD_DNS_privatelink_keyvault" {
  description = "DNS zone for key vault private link"
  type        = string
  default     = ""

}


variable "MD_ALL_TAGS" { }

