terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

}


provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami = "ami-00874d747dde814fa"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
