terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app-server" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"

  tags = {
    department = "sales"
  }
}
