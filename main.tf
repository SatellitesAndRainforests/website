resource "aws_s3_bucket" "bucket" {
  bucket = "markstart"
  acl = "public-read"
  
  provisioner "local-exec" {
    command = "aws s3 sync static/ s3://${aws_s3_bucket.bucket.bucket} --acl public-read --delete"
  }

  website {
    index_document = "index.html"
  }

}
