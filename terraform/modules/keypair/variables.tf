variable "keypair_name" {
  description = "Name of the OpenStack keypair"
  type = string
}

variable "public_key" {
  description = "Public key path on local machine"
  sensitive = true
}