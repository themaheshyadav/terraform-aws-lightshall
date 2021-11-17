# Create a new Lightsail Key Pair
resource "aws_lightsail_key_pair" "main" {
  count = var.enabled && var.keypair_enabled ? 1 : 0
  name = var.key_name
  public_key = var.public_key
}

resource "aws_lightsail_instance" "main" {
  count = var.enabled && var.lightsail_enabled ? 1 : 0
  name              = var.light_name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  user_data         = var.user_data
  key_pair_name     = var.enabled && var.keypair_enabled ? join("", aws_lightsail_key_pair.main.*.name) : var.exsting_key_name
  tags = var.tag
}

resource "aws_lightsail_static_ip" "main" {
  count = var.enabled && var.static_ip_enabled ? 1 : 0
  name = var.static_ip_name
}

resource "aws_lightsail_static_ip_attachment" "dev" {
  count = var.enabled && var.static_ip_enabled ? 1 : 0
  static_ip_name = join("", aws_lightsail_static_ip.main.*.name)
  instance_name  = join("", aws_lightsail_instance.main.*.name)
}
