terraform{
	required_providers{

		aws={

		source = "hashicorp/aws"
		version= "~>4.16"
}
}
required_version = "~>1.2.0"
}
provider "aws" {
	region = "us-east-1"
}
resource "aws_instance" "my_ec2_instance" {
	ami = "ami-08c40ec9ead489470"
	instance_type = "t2.micro"
	tags ={
		Name = "terraform-instance"
}
}
resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "trainwithshubham-bucket-123"
	tags = {
		Name = "trainwithshubham-bucket-123"
		Environment = "Dev"
}
}
output "ec2_public_ips" {
	value = aws_instance.my_ec2_instance.public_ip
}
