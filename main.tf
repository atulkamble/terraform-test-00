terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-00fa32593b478ad6e"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}