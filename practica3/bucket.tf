resource "aws_s3_bucket" "bucket" {
  count  = 6
  bucket = "my-bucket${random_string.sufijo[count.index].result}"
  tags = {
    Owner       = "Julian"
    Environment = "Dev"
    Office      = "proveedores"
  }
}

resource "random_string" "sufijo" {
  count   = 6
  length  = 8
  special = false
  upper   = false
  numeric = false
}
