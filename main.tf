
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
  #enable_rbac_authorization = true
  
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


resource "azurerm_private_endpoint" "pe_kv" {
  
  name                = var.MD_PE_NAME
  location            = var.MD_LOCATION
  resource_group_name = var.MD_RG_NAME
  subnet_id           = var.MD_SUBNET_ID

  private_dns_zone_group {
    name                 = "privatelink.vaultcore.azure.net"
    private_dns_zone_ids = [var.MD_DNS_privatelink_keyvault]
  }

  private_service_connection {
    name                              = var.MD_PESC_NAME
    private_connection_resource_id = azurerm_key_vault.wkv.id
    is_manual_connection              = false
    subresource_names = ["vault"]
  }
  lifecycle {
    ignore_changes = [
     tags
    ]
  }
}

output "KV_ID" {
  value     = azurerm_key_vault.wkv.id
  }
