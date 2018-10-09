# Terraform
This repository contains infrastructure-as-code declarations, which are used to build my organization's cloud infrastrucure on Microsoft Azure using HashiCorp Terraform.

The modules referenced in these config files come from my Terraform-Modules repository.

The repository is organized in such a way that each group of resouces can be deployed and managed individually. State is stored in Consul, and secrets are stored in Vault. This is not a plug-and-play repository; functional Vault and Consul clusters are required, and there is some setup involved.