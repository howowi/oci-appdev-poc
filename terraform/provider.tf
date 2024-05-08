terraform {
  required_version = ">= 1.2"
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

// Default Provider
provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
}

// Home Region Provider
provider "oci" {
  alias            = "homeregion"
  region           = data.oci_identity_region_subscriptions.home_region_subscriptions.region_subscriptions[0].region_name
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
}