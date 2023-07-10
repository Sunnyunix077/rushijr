output "volume_id" {
    description = "Volume ID of the created volume"
    value = openstack_blockstorage_volume_v3.volume.id
}

output "volume_name" {
    description = "Name of the created volume"
    value = openstack_blockstorage_volume_v3.volume.name
}

output "volume_size" {
    description = "Size of the created volume"
    value = openstack_blockstorage_volume_v3.volume.size
}

output "volume_region" {
    description = "Region of the created volume"
    value = openstack_blockstorage_volume_v3.volume.region  
}

output "volume_attachment" {
    value = openstack_blockstorage_volume_v3.volume.attachment
}