# Jenkins CI/CD Pipeline on AWS with Terraform

This project provisions a Jenkins CI/CD pipeline on AWS using Terraform. It includes:

- **VPC** with public and private subnets
- **EC2** instance running Jenkins
- **Load Balancer** for traffic distribution
- **Security Groups** for resource security

## Prerequisites

- Terraform installed
- AWS account and CLI configured
- AWS keypair for EC2 access

## Project Structure

├── modules/
│   ├── ec2/
│   ├── network/
│   └── loadbalancer/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md

# Configure AWS CLI:
- aws configure

# Initialize Terraform:
- terraform init

# Plan the configuration
- terraform plan

# Apply the configuration
- terraform apply

# Destroy the configuration
- terraform destroy