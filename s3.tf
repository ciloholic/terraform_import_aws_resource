resource "aws_s3_bucket" "before_bucket" {
  bucket        = "${local.service_config.prefix}-brefore-bucket"
  acl           = "private"
  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = "${local.service_config.prefix}-before-bucket"
  }
}

resource "aws_s3_bucket_public_access_block" "before_bucket_public_access_block" {
  bucket                  = aws_s3_bucket.before_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# resource "aws_s3_bucket" "after_bucket" {
# }

# resource "aws_s3_bucket_public_access_block" "after_bucket_public_access_block" {
# }
