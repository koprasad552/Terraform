resource "aws_vpc" "main-vpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}


resource "aws_subnet" "public-subnet" {
  vpc_id     = "${aws_vpc.main-vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main-vpc.id}"

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "publicRT" {
  vpc_id = "${aws_vpc.main-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags = {
    Name = "main"
  }
}

resource "aws_route_table_association" "PublicRT-Association" {
  subnet_id      = "${aws_subnet.public-subnet.id}"
  route_table_id = "${aws_route_table.publicRT.id}"
}
