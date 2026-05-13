terraform {
  required_version = ">= 1.15.1"
  cloud {
    organization = "jatin-terraform-lab"
    workspaces {
      name = "terraform-aws-lab"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0273e3d83fa1b4799"
  instance_type = "t3.micro"

  tags = {
    Name = "cloud-ec2"
  }
}

resource "s3_bucket" "demo" {
  bucket = "jatu_buck"
}
