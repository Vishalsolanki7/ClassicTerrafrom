terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}
resource "aws_instance" "web_server" {
  ami           = "ami-057b6e529186a8233"
  instance_type = "t2.micro"

  tags = {
    Name = "FirstEc2ViaTF"
  }
}

provider "aws" {
  region  = "eu-west-1"
}