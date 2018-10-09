data "vault_generic_secret" "vpn" {
  path = "secret/terraform/azure/development/virtualnetwork"
}

region = "East US"

environment = "development"

resource_group_name = "RG-VirtualNetwork"

virtual_network_name = "k8s-vnet"

virtual_network_address_space = ["10.50.0.0/16"]

subnet_1_name = "GatewaySubnet"

subnet_1_prefix = "10.50.0.0/24"

subnet_2_name = "ContainerSubnet"

subnet_2_prefix = "10.50.10.0/23"

public_ip_name = "k8s-vpn"

public_ip_type = "Dynamic"

vpn_name = "k8s-vpn"

vpn_sku = "Standard"

ip_configuration_name = "k8s-vnet"

local_network_name = "Company"

vpn_address_space = ["10.100.0.0/16", "10.200.0.0/16"]

blueport_address_space = ["10.100.0.0/16", "10.200.0.0/16"]

blueport_gateway_address = "199.120.209.4"

vpn_psk = "${data.vault_generic_secret.vpn.data["vpn_psk"]}"
