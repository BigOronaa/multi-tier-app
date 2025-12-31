terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.27" # matches your locked provider version
    }
  }
}

provider "aws" {
  region = "us-east-1" # change if you use another region
}
