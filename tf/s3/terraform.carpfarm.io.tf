resource "aws_s3_bucket" "terraform-carpfarm-io" {
  bucket = "terraform.carpfarm.io"
  acl    = "private"

  tags = {
    Name        = "terraform.carpfarm.io"
    Environment = "prod"
  }

  versioning {
    enabled = true
  }
}