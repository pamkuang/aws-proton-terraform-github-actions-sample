/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:346078522763:environment/hmm1

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "public_subnet_one" {
  value = aws_subnet.public_subnet_one
}

output "public_subnet_two" {
  value = aws_subnet.public_subnet_two
}