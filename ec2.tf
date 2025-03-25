resource "aws_instance" "apache_instance" {
  ami             = "ami-084568db4383264d4"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  tags = {
    Name = "prod-apache-01"
  }
}
