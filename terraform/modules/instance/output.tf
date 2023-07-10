output "instance_id" {
  description = "ID of the created instance"
  value       = openstack_compute_instance_v2.instance.id
}

output "instance_name" {
  description = "Name of the instance created"
  value       = openstack_compute_instance_v2.instance.name 
}

output "access_ip_v4" {
  description = "Ip of the instance created"
  value       = openstack_compute_instance_v2.instance.access_ip_v4
}

# output "floating_ip" {
#   value       = openstack_compute_instance_v2.instance.floating_ip
# }