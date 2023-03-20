variable "filename" {
	default = "/home/shubham/terraform-course/terraform-variable/devops-auto.txt"
}
variable "content" {
	default = "this is automated local file"
}
variable "content_map" {
type = map
default = {
"content1" = "this is content 1"
"content2" = "this is content 2"
}
}
variable "content_obj" {
type = object({
	name = string
	instances = number
})

default = {
	name = "aws"
	instances = 4
}
}
