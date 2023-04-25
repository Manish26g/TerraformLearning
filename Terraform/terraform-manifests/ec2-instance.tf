# Terraform Setting Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Block
provider "aws" {
    profile = "default" # AWS Credentails Profile configured on your local desktop terminal
    region  = "ap-south-1"
  
}

# Resource Block
resource "aws_instance" "ec2demo" {
    ami = "ami-0c768662cc797cd75"
    instance_type = "t2.micro"
  
}

