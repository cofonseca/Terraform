module ContainerRegistry {
  source                  = "git::git@github.com:cofonseca/Terraform-Modules.git//ContainerRegistry"
  region                  = "${var.region}"
  container_registry_sku  = "${var.container_registry_sku}"
  container_registry_name = "${var.container_registry_name}"
  resource_group_name     = "${var.resource_group_name}"
  environment             = "${var.environment}"
}
