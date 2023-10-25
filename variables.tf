###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

###common vars

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "your_ssh_ed25519_key"
#  description = "ssh-keygen -t ed25519"
#}

#variable "metadata" {
#  type    = map(string)
#  default = { serial-port-enable = "1", ssh-keys = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID08bAk0mu9NnxuO+QTKCYee5KF2IZsi9DCm8ATi8uzQ root@ycjll.ru-central1.internal" }
#}


variable "ssh_public_key" {
  type        = string
  default     = "/root/.ssh/id_ed25519.pub"
}

