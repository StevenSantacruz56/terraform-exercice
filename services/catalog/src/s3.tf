resource "aws_s3_bucket" "example_bucket" {
  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Environment = var.env
    Project     = var.project
  }
}