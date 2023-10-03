module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "Practice_vpc"
  cidr = "10.0.0.0/16"
  azs = ["us-east-1a", "us-east-1b","us-east-1d", "us-east-1f"]
  
  private_subnet_names = ["Practice_Private_Subnet_1", "Practice_Private_Subnet_2"]
  private_subnets = ["10.0.1.0/24","10.0.2.0/24"]
  enable_nat_gateway = true
  single_nat_gateway = true
  one_nat_gateway_per_az = false
  
  public_subnet_names = ["Practice_Public_Subnet_1", "Practice_Public_Subnet_2"]
  public_subnets = ["10.0.3.0/24","10.0.4.0/24"]
  map_public_ip_on_launch = true
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    terraform = "true"
    environment = "dev"
  }
  

}