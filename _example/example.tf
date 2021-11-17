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
  public_key        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwcYsYut3dNrgTX84us6j8bxxMciRC4W0x0EPiKf5tpAhH8vNugTKqizmu+I6h1IHsV+oR7AyATomGC2fsvaQ/lGO9hEEXOcOC/9ufT0i8LDs6vbshQRZwOcph2FRL9jL+aHnrsz2M/AysHW+xSH/rm/quuo5JudsE/fzvBjRLZWXAQtNtXiChiMHSWQIDeKirvQNtMcSyTWdTFCXAMb2fRrBxU2Sd37kbY9pXjH0b1gYIXqO9Odn8dz69IN58LFetjNPn/997GuHWUCFFUXu/wma2Z9d904Y3cjIQ2h/7ebYlp6lOsqjopvsrPgm9C66GcylRKw1ROLzlDgehXPzF1Qo7mE40IDTIfuDPzvMegqEJXgU3htIbqE18jkUCdh/eysBw77NdC+QS6nQwDKKdDYRAzN75tcpnMOy45868rMiL+m3SkilBIMyuakScyUiRCZaD8nb1M/yGXed77j/FVH6YAnF1QaYiL23rvmEazTGDu9tyHubQ8Pz08pZP4oc= mahesh@mahesh"
}
