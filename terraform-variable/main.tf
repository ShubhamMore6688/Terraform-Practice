resource "local_file" "devops" {
	filename = "/home/shubham/terraform-course/terraform-variable/devops.txt"
	content = var.content_map["content1"]
}

resource "local_file" "devops-automated" {
	filename = var.filename
	content = var.content_map["content2"]
}

output "aws_obj" {
value = var.content_obj.instances
}
