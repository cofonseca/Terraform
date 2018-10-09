provider "vault" {
  address = "https://vault.company.com:8200"
  token   = "c33a62af-82d2-55f2-2b41-b3c8774980c2"
}

data "vault_generic_secret" "azure" {
  path = "secret/terraform/azure"
}

provider "azurerm" {
  subscription_id = "${data.vault_generic_secret.azure.data["subscription_id"]}"
  client_id       = "${data.vault_generic_secret.azure.data["client_id"]}"
  client_secret   = "${data.vault_generic_secret.azure.data["client_secret"]}"
  tenant_id       = "${data.vault_generic_secret.azure.data["tenant_id"]}"
}