output "availability_zone" {
  value = aws_lightsail_instance.main.availability_zone
}


output "tags" {
  value = aws_lightsail_instance.main.tags
}

output "public_key" {
  value = aws_key_pair.key.public_key
}
output "public_id" {
  value = aws_key_pair.key.id
}
output "static_ip" {
  value = aws_lightsail_static_ip.static.ip_address
}
output "domain_name" {
  value = aws_lightsail_domain.domain_test.id
}
output "public_ports" {
  value = aws_lightsail_instance_public_ports.public_ports.id
}

