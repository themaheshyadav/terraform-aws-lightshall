variable "availability_zone" {
  type = string
  default = ""
}
variable "blueprint_id" {
  type = string
  default = ""
}
variable "bundle_id" {
  type = string
  default = ""
}
variable "lightsail_name" {
  type = string
  default = ""
}


variable "tags" {
  type = map(any)
  default = {}
}

variable "user_data" {
  type = string
  default = ""
}

variable "key_name" {
  type = string
  default = ""
}

variable "public_key" {
  type = string
  default = ""
}
variable "name" {
  type = string
  default = ""
}
variable "static_ip_name" {
  type = string
  default = ""
}
variable "domain_name" {
  type = string
  default = ""
}

