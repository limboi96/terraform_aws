provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "hoseop_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    "Name" = "hoseop-vpc"
  }
}