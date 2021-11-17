output "publc" {
  value = aws_lightsail_key_pair.main.*.
  description = "The ARN of the Lightsail instance."
}