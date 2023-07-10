resource "openstack_blockstorage_volume_v3" "volume" {
  enable_online_resize = true
  name = var.volume_name
  size = var.volume_size
  volume_type = var.volume_type
  description = "Creating a volume on openstack"
}