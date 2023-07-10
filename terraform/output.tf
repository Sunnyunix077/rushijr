# Calling keypair output
output "keypair_name" {
  value = "${module.keypair.keypair_name}"
}

output "keypair_fingerprint" {
  value = "${module.keypair.keypair_fingerprint}"
}

output "public_key" {
  value = "${module.keypair.public_key}"
  sensitive = true
}

output "private_key" {
  value = "${module.keypair.private_key}"
  sensitive = true
}

#####################################################

# Calling Security group output
output "secgroup_1_id" {
  value = module.secgroup.secgroup_1_id
}

output "secgroup_1_name" {
  value = module.secgroup.secgroup_1_name
}

#####################################################

#Calling Instance output
output "instance_id" {
  description = "ID of the created instance"
  value       = module.instance.instance_id
}

output "instance_name" {
  description = "Name of the instance created"
  value       = module.instance.instance_name
}

output "access_ip_v4" {
  description = "Ip of the instance created"
  value       = module.instance.*.access_ip_v4
}

#####################################################

#Calling Floatip output
output "floating_ip" {
  value = module.floating_ip.*.floating_ip
}

output "floating_fixed_ip" {
  value = module.floating_ip.floating_fixed_ip
}

output "floating_ip_port_id" {
  value = module.floating_ip.floating_ip_port_id
}

#####################################################

# Calling Volume outputs
output "volume_id" {
    description = "Volume ID of the created volume"
    value = module.volume.volume_id
}

output "volume_name" {
    description = "Name of the created volume"
    value = module.volume.volume_name
}

output "volume_size" {
    description = "Size of the created volume"
    value = module.volume.volume_size
}

output "volume_region" {
    description = "Region of the created volume"
    value = module.volume.volume_region  
}

output "volume_attachment" {
    value = module.volume.volume_attachment
}

#####################################################