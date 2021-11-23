provider "aws" {
  region = "us-east-1"
}
module "lightsail_instance" {
  source = "../"
  availability_zone = "us-east-1a"
  blueprint_id = "ubuntu_20_04"
  bundle_id = "nano_2_0"
  name = "dev"
  key_name = "main_key"
  public_key ="xyz"
  static_ip_name = "staticip"
  domain_name = "mydomain.com"
  user_data = file("${path.module}./user_data")
  tags       = {
    created_by = "Mahesh"
  }
}
