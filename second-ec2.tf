provider "aws" {
  region = "eu-north-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-7158"
    region = "eu-north-1"
    key = "terraform.tfstate"
    
  }
}

resource "aws_instance" "terraform" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = var.instance_type
  key_name = "newins"
  

  tags = {
    Name = "HelloWorld"
  }
}

#input variable
variable "instance_type" {
  default = "t3.micro"
  
}

#output variable
output "public_ip" {
  value = aws_instance.terraform.public_ip
}