# Uploads an API signing key for the specified user
resource "oci_identity_api_key" "user_api_key" {
  #Required
  provider       = oci.homeregion
  key_value = tls_private_key.public_private_key_pair.public_key_pem
  user_id   = var.user_ocid
}

# Create Auth Token for Container Registry
resource "oci_identity_auth_token" "user_auth_token" {
  provider       = oci.homeregion
  description = "for OCI Container Registry"
  user_id = var.user_ocid
}