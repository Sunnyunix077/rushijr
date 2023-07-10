output "keypair_name" {
  value = openstack_compute_keypair_v2.keypair.name
}

output "keypair_fingerprint" {
  value = openstack_compute_keypair_v2.keypair.fingerprint
}

output "public_key" {
  value = openstack_compute_keypair_v2.keypair.public_key
}

output "private_key" {
  value = openstack_compute_keypair_v2.keypair.private_key
}