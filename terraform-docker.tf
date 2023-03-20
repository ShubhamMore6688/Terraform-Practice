terraform {
	required_providers{
		docker={
		source = "kreuzwerker/docker"
}
}
}

provider "docker" {}

resource "docker_image" "nginx" {
name = "nginx:latest"
keep_locally = false
}

resource "docker_container" "nginx" {
image = docker_image.nginx.latest
name = "nginx"
ports {
	internal = 80
	external = 80
}

}