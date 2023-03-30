/*
This file is no longer managed by AWS Proton. The associated resource has been deleted in Proton.
*/

resource "aws_ssm_parameter" "my_ssm_parameter" {
  name  = "my_ssm_parameter"
  type  = "String"
  value = var.environment.inputs.ssm_parameter_value
}

resource "aws_subnet" "public_subnet_one" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "${var.environment.inputs.subnet_one_cidr}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_two" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "${var.environment.inputs.subnet_two_cidr}"
  map_public_ip_on_launch = true
}


