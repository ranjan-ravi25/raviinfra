variable "virtual_network_name" {
    type = string
}

variable "virtual_network_location" {
    type = string
}

variable "resource_group_name" {
    type = string
}

variable "address_space" {
    type = list(string)
}

variable "dns_servers" {
    type = list(string)
  }