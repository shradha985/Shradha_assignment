terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.17.0"
    }
}
    backend "s3" {
      bucket = "upgrad-bhargava"
      key    = "home/ubuntu/Terraform-Ansible-Jenkins-Project_BG"
      region = "us-east-1"
   }
}
provider "aws" {
  # Configuration options
        region= "us-east-1"
}

