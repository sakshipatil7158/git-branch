resource "aws_instance" "terraform" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.micro"
  key_name = "newins"
  vpc_security_group_ids = "sg-05bc084a89364092e"

  tags = {
    Name = "HelloWorld"
  }
}