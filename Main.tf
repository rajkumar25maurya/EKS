## backend data for terraform
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "rajdataaxlef"
    key    = "rajdataaxle_2.tfstate"
    region = "us-east-1"
  }
}

## random provider
provider "random" {}

##Povider us-west-1
provider "aws" {
  alias = "Central"
  region = "us-west-1"
}

## Provider us-east-1
provider "aws" {
  region = "us-east-1"
}

