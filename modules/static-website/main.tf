#todo, main for static website
resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name
  acl    = "public-read"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }

  policy = file("./modules/static-website/policy.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
