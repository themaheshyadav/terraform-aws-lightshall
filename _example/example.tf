# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "aws_lightsail_instance" {
  source            = "../"
  enabled           = true
  keypair_enabled   = true
  key_name          = "prod"
  lightsail_enabled = true
  light_name        = "dev-light"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "nano_2_0"
   user_data = file("${path.module}/pritunl.sh")
static_ip_name    = "dev-ipd"
  static_ip_enabled = true
public_key = "xxxxxxxxxx"
}
