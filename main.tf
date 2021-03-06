provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/SAASGlobal/s3-webapp/aws"
  #source = "https://github.com/sasfar/learn-private-module-root/blob/master/main.tf"
  name        = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

#terraform {
#  required_version = "0.13.2"
#}