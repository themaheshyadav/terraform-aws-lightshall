output "public_key" {
  value = module.aws_lightsail_instance.publc
  description = "The ARN of the Lightsail instance."
}