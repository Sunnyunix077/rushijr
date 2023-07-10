resource "openstack_compute_keypair_v2" "keypair" {
  name       = var.keypair_name
  public_key = file(var.public_key)
  #public_key  = file("/root/.ssh/id_rsa.pub")
}


