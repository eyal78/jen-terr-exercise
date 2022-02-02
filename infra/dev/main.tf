terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.68"
    }
  }

    required_version = ">= 0.14.10"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "Terraform-Test-ec2" {
  ami           = "ami-001089eb624938d9f"
  instance_type = "t2.micro"

  tags = {
    Name      = "ec2_for_dev"
    Terraform = "True"
  }
}