
resource "aws_lambda_function" "ingest" {
function_name = "${var.project_name}-ingest"
role = module.iam.lambda_role_arn
handler = "handler.main"
runtime = "python3.11"


filename = "lambda/ingest.zip"


environment {
variables = {
BUCKET = aws_s3_bucket.documents.bucket
COLLECTION = aws_opensearchserverless_collection.vector.name
}
}
