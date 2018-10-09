terraform {
    backend "consul" {
        access_token = "cee9ac59-3588-b421-da7a-64e06e865b3a"
        address = "consul.company.com:8500"
        datacenter = "company"
        lock = true
        path = "terraform/state/development/virtualnetwork"
        ca_file = "../../../Certificates/consul-ca.pem"
        cert_file = "../../../Certificates/client.pem"
        key_file = "../../../Certificates/client-key.pem"
    }
}