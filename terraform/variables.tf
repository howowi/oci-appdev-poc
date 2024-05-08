#*************************************
#           TF Requirements
#*************************************
variable "region" {
  description = "OCI Region"
}

variable "tenancy_ocid" {
  description = "Tenancy OCID"
}

variable "compartment_ocid" {
  description = "OCID of the compartment where VCN, Compute and Opensearch will be created"
}

variable "user_ocid" {
  description = "OCID of the user who provisioning OCI resources"
  default     = ""
}

#*************************************
#           VCN
#*************************************

variable "vcn_name" {
  description = "VCN Name"
}

variable "vcn_cidr" {
  description = "VCN's CIDR IP Block"
}

#*************************************
#           OKE
#*************************************

variable "kubernetes_version" {
  description = "Kubernetes version"
}

variable "oke_node_shape" {
  description = "Instance shape of the node"
}

variable "oke_shape_ocpus" {
  description = "Number of OCPUs of each node"
}

variable "oke_shape_mems" {
  description = "Memory of each node in GB"
}

variable "oke_image_os_id" {
  description = "OS Image OCID of the node pool"
}

# variable "OCIR_USERNAME" {
#   description = "Example for non-federated user - tenancynamespace/john@oracle.com , Example for federated user - tenancynamespace/oracleidentitycloudservice/john@oracle.com"
# }

# variable "OCIR_URL" {
#   description = "<region_code>.ocir.io, eg. sin.ocir.io"
# }
