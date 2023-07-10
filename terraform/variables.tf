variable "auth_url" {
  description = "Url for authentication" 
}

variable "project_domain_id" {
  description = "Project domain id"  
}

variable "user_domain_name" {
  description = "User domain name"
}

variable "user_name" {
  description = "Name of the user"
}

variable "keypair_name" {
  description = "Name of the OpenStack keypair"
  type = string
}

variable "public_key" {
  description = "Public key path on local machine"
  sensitive = true
}

variable "secgroup_1" {
  description = "Name of the Security Group keypair"
  type = string
}

variable "secgroup_rule_1" {
   description = "Name of the Security Group rule 1"
}

variable "secgroup_rule_2" {
   description = "Name of the Security Group rule 2"
}

variable "secgroup_rule_3" {
   description = "Name of the Security Group rule 3"
}

variable "instance_name"{
    description = "Name of the OpenStack instance"
}

variable "network_name" {
    description = "Name of the Network"
}

variable "network_id" {
  description = "ID of the existing network"
  type        = string
}

variable "image_id" {
  description = "Name of the image id to use for the instance"
}

variable "image_name" {
  description = "Name of the image to use for the instance"
  default = "CentOS-7-x86_64-GenericCloud-2009"
}

variable "flavor_name" {
    description = "Name of the flavor used"
}

variable "floating_ip_pool" {
  description = "Name of the pool"
}

variable "volume_name" {
    description = "Name of the volume"
    type = string
}

variable "volume_size" {
    description = "Size of the volume (in GB)"
    type = number
}

variable "volume_type" {
    description = "Name of the volume type"
}

variable "device_name" {
  description = "Name of the block device"
}

variable "keypair_private_key" {
  description = "Private key pair path"
  sensitive = true
}

variable "remote_server_user" {
  description = "Remote server username to use while performing ssh authetication"
}

variable "remote_session_medium" {
  description = "Provides ssh to access remote session"
}

variable "filesystem" {
  description = "Providing a filesystem name"
}

variable "mount_path" {
  description = "Providing a location to mount the volume"
}

variable "ansible_inventory_filepath" {
  description = "Providing path to inventory file of ansible" 
}