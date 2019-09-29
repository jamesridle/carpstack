provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "terraform.carpfarm.io"
    key    = "s3/terraform.tfstate.new"
    region = "us-west-2"

  }
}
