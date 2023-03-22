# sample from https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-remote
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# sample from: https://geekflare.com/terraform-for-beginners/
provider "aws" {
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "testing"
  region                   = "ap-northeast-1"
}

resource "aws_instance" "terraform_demo" {
  ami           = "ami-030cf0a1edb8636ab"
  instance_type = "t2.micro"
}

