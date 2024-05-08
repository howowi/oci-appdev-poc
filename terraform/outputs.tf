# OCI CLI Identity output

output OCI_CLI_FINGERPRINT {
  value = oci_identity_api_key.user_api_key.fingerprint
}

output OCI_CLI_KEY_CONTENT {
  value = "https://cloud.oracle.com/object-storage/buckets/${data.oci_objectstorage_namespace.oss_namespace.namespace}/${oci_objectstorage_bucket.oss_bucket.name}"
}

output OCI_CLI_REGION {
  value = var.region
}

output OCI_CLI_TENANCY {
  value = var.tenancy_ocid
}

output OCI_CLI_USER {
  value = var.user_ocid
}

output OCI_COMPARTMENT_OCID {
  value = var.compartment_ocid
}

output OCI_AUTH_TOKEN {
  value = oci_identity_auth_token.user_auth_token.token
}

output OCI_DEVOPS_PIPELINE_ID {
    value = oci_devops_deploy_pipeline.poc-deploy-pipeline.id
}