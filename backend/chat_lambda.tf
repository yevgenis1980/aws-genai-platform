
resource "aws_lambda_function" "chat" {
function_name = "${var.project_name}-chat"
role = module.iam.lambda_role_arn
handler = "handler.main"
runtime = "python3.11"


filename = "lambda/chat.zip"


environment {
variables = {
TABLE_NAME = aws_dynamodb_table.chat_history.name
MODEL_ID = "anthropic.claude-3-sonnet-20240229-v1:0"
}
}
}
