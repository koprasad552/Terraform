resource "aws_instance" "web" {
  count         = "${var.count}"
  ami           = "${var.ami-id}"
  instance_type = "${var.instance-type}"
  security_groups = ["${var.security-group[count.index]}"]
  key_name      = "${var.keypair-name}"
  subnet_id     = "${var.subnet-id}"

  tags = {
    Name = "${var.name[count.index]}"
  }
}
