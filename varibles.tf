variable "tag" {
  type = map(any)
  default = {}
}

variable "key_name" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "light_name" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "availability_zone" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "blueprint_id" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "bundle_id" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "user_data" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "static_ip_name" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "enabled" {
  type = bool
  default = false
  description = "if create access key or not"
}

variable "keypair_enabled" {
  type = bool
  default = false
  description = "if create access key or not"
}

variable "lightsail_enabled" {
  type = bool
  default = false
  description = "if create access key or not"
}

variable "static_ip_enabled" {
  type = bool
  default = false
  description = "if create access key or not"
}

variable "exsting_key_name" {
  type = string
  default = ""
  description = "if create access key or not"
}

variable "name" {
  type = string
  default = ""
  description = "if create access key or not"
}




variable "public_key" {
  type = string
  default = ""
  description = "if create access key or not"
}