provider "aws" {
  region = var.region
}

module "network" {
  source              = "./modules/network"
  vpc_cidr            = var.vpc_cidr
  public_subnet1_cidr = var.public_subnet1_cidr
  public_subnet2_cidr = var.public_subnet2_cidr
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet2_cidr = var.private_subnet2_cidr
  region              = var.region
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = module.network.public_subnet1_id # Use one of the private subnets
  security_group_id = module.network.security_group_id
}

module "loadbalancer" {
  source             = "./modules/loadbalancer"
  vpc_id             = module.network.vpc_id
  subnets            = [module.network.public_subnet1_id, module.network.public_subnet2_id] # Use both public subnets
  security_group_id  = module.network.security_group_id
  region             = var.region
}
