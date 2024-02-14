terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

provider "aci" {
  username = var.apic.username
  password = var.apic.password
  url      = var.apic.url
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = ">=0.7.0"

  yaml_directories = ["data"]

  manage_access_policies    = true
  manage_fabric_policies    = true
  manage_pod_policies       = true
  manage_node_policies      = true
  manage_interface_policies = true
  manage_tenants            = true
}
