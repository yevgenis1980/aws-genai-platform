
resource "aws_s3_bucket" "frontend" {
bucket = "${var.project_name}-frontend-${random_id.suffix.hex}"
acl = "public-read"


website {
index_document = "index.html"
error_document = "index.html"
}
}
