
output "availability_zone" {
  value = module.lightsail_instance.availability_zone
}
output "tags_all" {
  value = module.lightsail_instance.tags
}

output "public_key" {
  value = module.lightsail_instance.public_key
}
output "public_id" {
  value = module.lightsail_instance.public_id
}
output "static_ip" {
  value = module.lightsail_instance.static_ip
}
output "domain_name" {
  value = module.lightsail_instance.domain_name
}
output "public_ports" {
  value = module.lightsail_instance.public_ports
}
