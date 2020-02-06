module "vpc" {
  source = "./module/vpc"
}

module "subnet" {
  source = "./module/subnet"

  vpc-id = "${module.vpc.vpcid}"
}

module "ec2" {
  source = "./module/ec2"

  subnet-id = "${module.subnet.subnetid}"
}
