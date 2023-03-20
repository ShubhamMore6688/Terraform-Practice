terraform {
	required_providers{
		aws = {
			source= "hashicorp/aws"
			version = "~> 4.16
}

}
required_version = ">=1.2.0"

}

provider "aws" {

region = "us-east-1"
}

locals {
	instances= toset(["devendra","nimo","yash","aboror"])
}

locals {
	instances = {"devendra":"ami-08c40ec9ead","nimo":"ami-08c40ec9ead", "yash":"ami-08c40ec9ead", "aboror":"ami-08c40ec9ead"}
}

resource "aws_instance" "aws_ec2_test" {
	for_each = local.instances
	ami = each.value
	instance_type = "t2.micro"
	tags = {
		Name = each.key
}

}
