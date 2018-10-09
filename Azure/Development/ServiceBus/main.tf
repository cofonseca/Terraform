module ServiceBus {
  source                    = "git::git@github.com:cofonseca/Terraform-Modules.git//ServiceBus"
  region                    = "${var.region}"
  environment               = "${var.environment}"
  resource_group_name       = "${var.resource_group_name}-${var.environment}"
  servicebus_namespace_name = "${var.servicebus_namespace_name}-${var.environment}"
  servicebus_sku            = "${var.servicebus_sku}"
  servicebus_queue_name     = "${var.servicebus_queue_name}"
}
