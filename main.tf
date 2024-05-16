terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region = var.region

}

resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "stark"
  for_each      = 
  # count         = 5
  # user_data     = <<-EOF
  # #!/bin/bash/
  # sudo apt update -y
  # echo "update" > /home/ubuntu/magic
  # EOF



  tags = {

    Name = each.key

  }
}
