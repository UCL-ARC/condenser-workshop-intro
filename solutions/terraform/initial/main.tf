data "harvester_image" "img" {
  display_name = "almalinux-10-generic"
  namespace    = "harvester-public"
}

resource "harvester_virtualmachine" "vm" {
  name        = var.vm_name
  namespace   = var.namespace
  description = "Demo VM"
  hostname    = "demo"

  cpu    = 2
  memory = "16Gi"

  restart_after_update = true
  efi                  = true
  secure_boot          = true
  run_strategy         = "RerunOnFailure"
  reserved_memory      = "100Mi"
  machine_type         = "q35"

  disk {
    name       = "rootdisk"
    type       = "disk"
    size       = "30Gi"
    bus        = "virtio"
    boot_order = 1

    image       = data.harvester_image.img.id
    auto_delete = true
  }

  network_interface {
    name = "eth0"
  }

}
