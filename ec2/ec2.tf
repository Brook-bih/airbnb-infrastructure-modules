resource "aws_instance" "web" {
  ami           = "ami-0bef6cc322bfff646"
  instance_type = "t2.micro"
  vpc_security_group_ids  = [var.sg_id]
  associate_public_ip_address = true

  tags = {
    Name = "HelloBrook"
  }
}
