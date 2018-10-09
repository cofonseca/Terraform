variable "region" {}

variable "environment" {}

variable "resource_group_name" {}

variable "virtual_network_name" {}

variable "virtual_network_address_space" {type = "list"}

variable "subnet_1_name" {}

variable "subnet_1_prefix" {}

variable "subnet_2_name" {}

variable "subnet_2_prefix" {}

variable "public_ip_name" {}

variable "public_ip_type" {}

variable "vpn_name" {}

variable "vpn_sku" {}

variable "ip_configuration_name" {}

variable "vpn_address_space" {type = "list"}

variable "local_network_name" {}

variable "blueport_gateway_address" {}

variable "blueport_address_space" {type = "list"}

variable "vpn_psk" {}