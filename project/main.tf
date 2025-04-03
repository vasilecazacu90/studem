provider "aws" {

    region      = "eu-north-1"
}

module "aws_sshkey" {
  source = "../modules/aws_sshkey"
}

module "aws_network" {
  source = "../modules/aws_network"
}

module "aws_EC2" {
  source            = "../modules/aws_EC2"
  security_group_id = module.aws_network.sg_id
  key_name          = module.aws_sshkey.ssh_key
}
