variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
  type    = string
  default = "10.0.4.0/24"
}

variable "ami_id" {
  type    = string
  default = "ami-0e2c8caa4b6378d8c"  # Replace with your desired AMI ID
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "key_name" {
  type    = string
  default = "key-pair-demo"  # Replace with your key pair name
}
