# Name: Creating Instance in Openstack using Terraform
# Aurthor: Rushikesh Bhoir
# Version: V1
# Date: 24 June 2023

# Calling keypair module
module "keypair" {
  source = "./modules/keypair"

  keypair_name = var.keypair_name
  public_key   = var.public_key
}

#####################################################

# Calling Security group module
module "secgroup" {
  source = "./modules/securitygroup"

  secgroup_1 = var.secgroup_1
  secgroup_rule_1 = var.secgroup_rule_1
  secgroup_rule_2 = var.secgroup_rule_2
  secgroup_rule_3 = var.secgroup_rule_3
}

#####################################################

#Calling Instance module
module "instance" {
  source          = "./modules/instance"

  instance_name   = var.instance_name
  network_id      = var.network_id
  network_name    = var.network_name
  image_name      = var.image_name
  image_id        = var.image_id
  flavor_name     = var.flavor_name
  keypair_name    = module.keypair.keypair_name
  secgroup_1      = module.secgroup.secgroup_1_id
}

#####################################################

#Calling Floatip module
module "floating_ip" {
  source = "./modules/floatip"

  floating_ip_pool = var.floating_ip_pool
}

#####################################################

# Assigning the floating ip to the instance
resource "openstack_compute_floatingip_associate_v2" "floating_ip_assignment" {
  floating_ip       = module.floating_ip.floating_ip
  instance_id       = module.instance.instance_id
}

#####################################################

# Calling Volume module
module "volume" {
  source = "./modules/volume"

  volume_name = var.volume_name
  volume_size = var.volume_size
  volume_type = var.volume_type
}

#####################################################

# Attach the volume to an OpenStack instance
resource "openstack_compute_volume_attach_v2" "volume_attachment" {
  instance_id   = module.instance.instance_id
  volume_id     = module.volume.volume_id
  device        = var.device_name
}

#####################################################

# Creates an dynamic inventory using ansible_inventory.tmpl
resource "local_file" "hosts_cfg" {
 content  = templatefile("${path.module}/ansible_inventory.tmpl", { Openstack_Instance = join("\n", module.floating_ip.*.floating_ip) })
 filename = var.ansible_inventory_filepath
}

#####################################################

