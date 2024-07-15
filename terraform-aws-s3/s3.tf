resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = "terraform-training-"
  tags = {
    Owner = "pf"
    TP    = "terraform-aws-s3"
  }
}
