resource "aws_lightsail_instance" "main" {
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  name              = var.name
  user_data = var.user_data
  tags              = var.tags
}

resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.public_key
}
resource "aws_lightsail_static_ip" "static" {
  name = var.static_ip_name
}

resource "aws_lightsail_static_ip_attachment" "static_ip_attachment" {
  static_ip_name = aws_lightsail_static_ip.static.id
  instance_name  = aws_lightsail_instance.main.id
}
resource "aws_lightsail_domain" "domain_test" {
  domain_name = var.domain_name
}
resource "aws_lightsail_instance_public_ports" "public_ports" {
  instance_name = aws_lightsail_instance.main.name

  port_info {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
  }
  port_info {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
  }
}

