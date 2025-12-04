terraform {
  cloud {
    organization = "cloudclub-iac"

    workspaces {
      name = "cloudclub-iac-lab"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

# Prod VPC  (이중화)
module "vpc" {
  source = "./modules/terraform-aws-vpc"

  vpc_cidr             = "10.0.0.0/16"
  vpc_name             = "prod-vpc"
  availability_zones   = ["ap-northeast-2a", "ap-northeast-2c"]
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
}