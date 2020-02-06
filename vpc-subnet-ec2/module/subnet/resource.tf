resource "aws_subnet" "main-subnet" {
  vpc_id     = "${var.vpc-id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "main-subnet"
  }
}
