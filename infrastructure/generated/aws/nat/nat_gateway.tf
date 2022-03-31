resource "aws_nat_gateway" "tfer--nat-0b622920961c6ea8d" {
  allocation_id     = "eipalloc-0b3b96e26330f7699"
  connectivity_type = "public"
  subnet_id         = "subnet-09dfd7d7f4154d73b"

  tags = {
    Name = "VPC1-nat-public1-us-east-1a"
  }

  tags_all = {
    Name = "VPC1-nat-public1-us-east-1a"
  }
}

resource "aws_nat_gateway" "tfer--nat-0ce237e7a3337864e" {
  allocation_id     = "eipalloc-05ae389a00d0080f6"
  connectivity_type = "public"
  subnet_id         = "subnet-0a95e15eb6c5075bc"

  tags = {
    Name = "VPC2-nat-public1-us-east-1a"
  }

  tags_all = {
    Name = "VPC2-nat-public1-us-east-1a"
  }
}
