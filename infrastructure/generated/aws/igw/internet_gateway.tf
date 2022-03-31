resource "aws_internet_gateway" "tfer--igw-027304aff3b28ecf1" {
  tags = {
    Name = "VPC2-igw"
  }

  tags_all = {
    Name = "VPC2-igw"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-00703e9d1ed38c615_id}"
}

resource "aws_internet_gateway" "tfer--igw-027d26640b0493b0d" {
  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-014df997e813ff39b_id}"
}

resource "aws_internet_gateway" "tfer--igw-06da48f1e801591fd" {
  tags = {
    Name = "VPC1-igw"
  }

  tags_all = {
    Name = "VPC1-igw"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-019794236b2eef755_id}"
}
