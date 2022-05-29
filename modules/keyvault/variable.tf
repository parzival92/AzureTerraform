variable "enabled_for_disk_encryption" {
  type = bool
  default = true  
  description = "Enable for Disk Encrytion"
}

variable "sku_name" {
  description = "The sku selection for keyvault"
}
variable "keyVaultName" {
    type = string
    description = "Name of KeyVault"
}
