resource "aws_instance" "tfer--i-015697efbef73ac96_inventory-poc-Bastion-VPC1" {
  ami                         = "ami-04505e74c0741db8d"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "demo-key"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "10.0.8.104"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      inventory-poc-Bastion-VPC1 = ""
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-09dfd7d7f4154d73b_id}"

  tags = {
    Name                       = "inventory-poc-Bastion-VPC1"
    inventory-poc-Bastion-VPC1 = ""
  }

  tags_all = {
    Name                       = "inventory-poc-Bastion-VPC1"
    inventory-poc-Bastion-VPC1 = ""
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--inventory-poc-Bastion-VPC1-sg_sg-09e7ed30358993e17_id}"]
}

resource "aws_instance" "tfer--i-03c760f6e54a64a10_inventory-poc-Database-VPC2" {
  ami                         = "ami-04505e74c0741db8d"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "demo-key"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"
  private_ip = "11.0.143.202"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      Name = "inventory-poc-Database-VPC2"
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-01e9302490ec3a64a_id}"

  tags = {
    Name = "inventory-poc-Database-VPC2"
  }

  tags_all = {
    Name = "inventory-poc-Database-VPC2"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--inventory-poc-Database-VPC2_sg-063383ce1d55e8f69_id}"]
}

resource "aws_instance" "tfer--i-0d167e36dc4a608ac_inventory-poc-Webserver1-VPC1" {
  ami                         = "ami-04505e74c0741db8d"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "demo-key"

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "enabled"
  }

  monitoring = "false"
  private_ip = "10.0.140.77"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"

    tags = {
      Name = "inventory-poc-Webserver1-VPC1"
    }

    volume_size = "8"
    volume_type = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06ea527ef23d0675b_id}"

  tags = {
    Name = "inventory-poc-Webserver1-VPC1"
  }

  tags_all = {
    Name = "inventory-poc-Webserver1-VPC1"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--inventory-poc-Webserver1-VPC1-sg_sg-059040b2665835eef_id}"]
}
