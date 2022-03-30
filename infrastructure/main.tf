locals {
  region = "us-east-1"
  myproject = "tshirts-poc"
      tags = {
        Environment = "dev"
    }
  }
provider "aws" {
  region = "${local.region}"

}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    name = "${local.myproject}-VPC1"
    cidr = "10.10.0.0/16"
    azs = ["${local.region}a","${local.region}b"]
    public_subnets = [ "10.10.0.0/28", "10.10.2.0/28" ]
    private_subnets = ["10.10.3.0/28", "10.10.4.0/26" ]
    enable_dns_hostnames = true
    enable_dns_support = true
    create_igw = true
    one_nat_gateway_per_az = true
    manage_default_route_table = true
    default_route_table_tags   = { Name = "${local.myproject}-default" }
    tags = {
      Name = "${local.myproject}-VPC1"
      Environment = "${local.tags.Environment}"
    }
}
