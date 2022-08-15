# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1g0n6is3r2q2ei0m9sj"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1gt0h1c0ohd8m60aehi"
}

variable "yandex_external_ip" {
  default = "51.250.74.88"
}

variable "yandex_ubuntu_user" {
  default = "ubuntu"
}

variable "yandex_centos_user" {
  default = "centos"
}
