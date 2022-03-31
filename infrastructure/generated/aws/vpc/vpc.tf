resource "aws_vpc" "tfer--vpc-00703e9d1ed38c615" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "11.0.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"

  tags = {
    Name = "VPC2-vpc"
  }

  tags_all = {
    Name = "VPC2-vpc"
  }
}

resource "aws_vpc" "tfer--vpc-014df997e813ff39b" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "172.31.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"

  tags = {
    Name = "default"
  }

  tags_all = {
    Name = "default"
  }
}

resource "aws_vpc" "tfer--vpc-019794236b2eef755" {
  assign_generated_ipv6_cidr_block = "false"
  cidr_block                       = "10.0.0.0/16"
  enable_classiclink               = "false"
  enable_classiclink_dns_support   = "false"
  enable_dns_hostnames             = "true"
  enable_dns_support               = "true"
  instance_tenancy                 = "default"
  ipv6_netmask_length              = "0"

  tags = {
    Name = "VPC1-vpc"
  }

  tags_all = {
    Name = "VPC1-vpc"
  }
}
