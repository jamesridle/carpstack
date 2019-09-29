provider "aws" {
  region = "us-west-2"
}

data "terraform_remote_state" "prod" {
  backend = "s3"

  config = {
    bucket = "terraform.carpfarm.io"
    key    = "us-west-2/prod/terraform.tfstate.new"
    region = "us-west-2"
  }
}
