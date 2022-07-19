

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


variable "MD_ALL_TAGS" { }
