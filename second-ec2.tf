resource "aws_instance" "terraform" {
  ami           = "ami-0c1ac8a41498c1a9c"
  instance_type = "t3.micro"
  key_name = "newins"
  vpc_security_group_ids = ["launch-wizard-8"]

  tags = {
    Name = "HelloWorld"
  }
}