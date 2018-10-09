data "vault_generic_secret" "sshkey" {
  path = "secret/terraform/azure/development/kubernetes"
}

resource_group_name = "RG-Kubernetes"

region = "East US"

environment = "development"

sshkey = "${data.vault_generic_secret.kubernetes.data["sshkey"]}"

kubernetes_version = "1.10.3"

node_count = "3"

node_size = "Standard_B2s"

azure_sp_client_id = "${data.vault_generic_secret.azure.data["client_id"]}"

azure_sp_client_secret = "${data.vault_generic_secret.azure.data["client_secret"]}"