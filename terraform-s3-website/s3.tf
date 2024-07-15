resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = "cde-website-"
  tags = {
    Owner = "pf"
    TP    = "terraform-aws-s3"
  }
}