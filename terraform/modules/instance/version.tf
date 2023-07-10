 terraform {
  required_version = "1.4.6"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.50.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
}
