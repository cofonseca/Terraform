module Kubernetes {
  source                 = "git::ssh://git@github.com:cofonseca/Terraform-Modules.git//Kubernetes"
  region                 = "${var.region}"
  environment            = "${var.environment}"
  resource_group_name    = "${var.resource_group_name}-${var.environment}"
  kubernetes_version     = "${var.kubernetes_version}"
  sshkey                 = "${var.sshkey}"
  node_count             = "${var.node_count}"
  node_size              = "${var.node_size}"
  azure_sp_client_id     = "${var.azure_sp_client_id}"
  azure_sp_client_secret = "${var.azure_sp_client_secret}"
}
