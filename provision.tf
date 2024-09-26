locals {
  region = "ap-south-1"
  name   = "shiva-eks"
  vpc_cidr = "10.0.0.0/16"
  azs      = ["ap-south-1a", "ap-south-1b"]  #  AP-south region
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnets   = ["10.0.5.0/24", "10.0.6.0/24"]
  tags = {
    #Example = test.name
    Environment = "dev"
  }
}

provider "aws" {
  region = local.region
}
