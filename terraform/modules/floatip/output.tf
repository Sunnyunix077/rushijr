output "floating_ip" {
  value = openstack_networking_floatingip_v2.floating_ip.address
}

output "floating_fixed_ip" {
  value = openstack_networking_floatingip_v2.floating_ip.fixed_ip
}

output "floating_ip_port_id" {
  value = openstack_networking_floatingip_v2.floating_ip.port_id
}