
resource "azurerm_key_vault" "wkv" {

  name                        = var.MD_KV_NAME
  location                    = var.MD_LOCATION
  resource_group_name         = var.MD_RG_NAME
  enabled_for_disk_encryption = true
  tenant_id                   = var.MD_ARM_TENANT_ID
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false # putting as true is not possible to delete secret with TF
  sku_name = "standard"
  tags = var.MD_ALL_TAGS 
  
  access_policy {
    tenant_id = var.MD_ARM_TENANT_ID
    object_id = var.MD_TERRAFORM_SERVICE_ID
    key_permissions = [
      "Get",
    ]
    secret_permissions = [
      "Get", "Delete", "Set", "Purge", "Recover"
    ]
    storage_permissions = [
      "Get",
    ]
  }
}
