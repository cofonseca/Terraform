module EventHub {
  source                      = "git::ssh://git@github.com:cofonseca/Terraform-Modules.git//EventHub"
  region                      = "${var.region}"
  environment                 = "${var.environment}"
  resource_group_name         = "${var.resource_group_name}-${var.environment}"
  eventhub_namespace_name     = "${var.eventhub_namespace_name}-${var.environment}"
  eventhub_namespace_sku      = "${var.eventhub_namespace_sku}"
  eventhub_namespace_capacity = "${var.eventhub_namespace_capacity}"
  eventhub_name               = "${var.eventhub_name}-${var.environment}"
  eventhub_partition_count    = "${var.eventhub_partition_count}"
  eventhub_message_retention  = "${var.eventhub_message_retention}"
  storage_account_name        = "${var.storage_account_name}${var.environment}"
  storage_container_name      = "${var.storage_container_name}-${var.environment}"
}
