terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.8"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-00874d747dde814fa" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
}
