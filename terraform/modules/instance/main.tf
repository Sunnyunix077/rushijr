resource "openstack_compute_instance_v2" "instance" {
  name            = var.instance_name
  image_id        = var.image_id
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = var.keypair_name
  security_groups = ["${var.secgroup_1}"] 

  network {
    name = var.network_name
    uuid = var.network_id
  }
}