resource "aws_security_group" "tfer--default_sg-0337d0fa415170bf5" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-014df997e813ff39b"
}

resource "aws_security_group" "tfer--default_sg-04640c2b4a9cd8d02" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-019794236b2eef755"
}

resource "aws_security_group" "tfer--default_sg-0f52d0fda9ccdce60" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-00703e9d1ed38c615"
}

resource "aws_security_group" "tfer--inventory-demo-vm_sg-06b76f955bb1dc8ae" {
  description = "launch-wizard-1 created 2022-03-30T04:55:37.936-03:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["170.51.203.237/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "inventory-demo-vm"
  vpc_id = "vpc-014df997e813ff39b"
}

resource "aws_security_group" "tfer--inventory-poc-Bastion-VPC1-sg_sg-09e7ed30358993e17" {
  description = "launch-wizard-1 created 2022-03-31T05:09:34.181-03:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["170.51.203.237/32"]
    description = "admin home"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "inventory-poc-Bastion-VPC1-sg"
  vpc_id = "vpc-019794236b2eef755"
}

resource "aws_security_group" "tfer--inventory-poc-Database-VPC2_sg-063383ce1d55e8f69" {
  description = "launch-wizard-1 created 2022-03-31T05:34:35.463-03:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["10.0.0.0/16"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "inventory-poc-Database-VPC2"
  vpc_id = "vpc-00703e9d1ed38c615"
}

resource "aws_security_group" "tfer--inventory-poc-Webserver1-VPC1-sg_sg-059040b2665835eef" {
  description = "launch-wizard-1 created 2022-03-31T05:12:02.300-03:00"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "22"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--inventory-poc-Bastion-VPC1-sg_sg-09e7ed30358993e17_id}"]
    self            = "false"
    to_port         = "22"
  }

  name   = "inventory-poc-Webserver1-VPC1-sg"
  vpc_id = "vpc-019794236b2eef755"
}
