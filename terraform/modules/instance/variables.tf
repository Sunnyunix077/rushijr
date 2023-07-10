variable "instance_name" {
  description = "Name of the instance"
  type        = string
}

variable "secgroup_1" {
  description = "Name of the Security Group keypair"
  type = string
}

variable "image_name" {
  description = "Name of the image to use for the instance"
  default = "CentOS-7-x86_64-GenericCloud-2009"
}

variable "image_id" {
  description = "Name of the image to use for the instance"
}

variable "flavor_name" {
  description = "Name of the flavor to use for the instance"
  type        = string
}

variable "keypair_name" {
  description = "Name of the key pair to use for SSH access"
  type        = string
}

variable "network_name" {
  description = "Name of the existing network"
  type        = string
}

variable "network_id" {
  description = "ID of the existing network"
  type        = string
}
