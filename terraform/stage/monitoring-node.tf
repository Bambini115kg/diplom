resource "yandex_compute_instance" "monitoring-node" {
  name                      = "monitoring-node"
  zone                      = "ru-central1-b"
  hostname                  = "monitoring-node"
  allow_stopping_for_update = true

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id    = "fd8hqa9gq1d59afqonsf"
      type        = "network-ssd"
      size        = "10"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.private-subnet.id}"
  }

  metadata = {
    ssh-keys = "centos:${file("~/.ssh/id_rsa.pub")}"
    serial-port-enable = 1
  }
}
