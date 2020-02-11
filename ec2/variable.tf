variable "ami-id"{
  default = "ami-062f7200baf2fa504"
}

variable "instance-type"{}

variable "keypair-name" {
  default = "aws-use1-dev"
}

variable "security-group" {
  type = "list"
  default = [ "sg-00192cc0f477f7fdb","sg-03983150a69c82038","sg-06cc1633f57e4fc4a" ]
}

variable "subnet-id"{
  default =  "subnet-4ca9932b"
}

variable "name" {
  type = "list"
  default = [ "Sanjeev", "Rami Reddy" , "Konda Reddy" ]
}
variable "count" {
  default = "3"
}
