resource "aws_instance" "web" {
  ami           = "ami-09d069a04349dc3cb"
  instance_type = "t2.micro"
  subnet_id     = "${var.subnet-id}"

  tags = {
    Name = "HelloWorld"
  }
}
