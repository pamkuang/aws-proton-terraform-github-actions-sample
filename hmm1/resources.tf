/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:346078522763:environment/hmm1

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
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


