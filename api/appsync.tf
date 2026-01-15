
resource "aws_appsync_graphql_api" "chat_api" {
name = "${var.project_name}-api"
authentication_type = "API_KEY"
}

resource "aws_appsync_api_key" "key" {
api_id = aws_appsync_graphql_api.chat_api.id
}

resource "aws_appsync_graphql_api" "chat_api" {
name = "${var.project_name}-api"
authentication_type = "AMAZON_COGNITO_USER_POOLS"

user_pool_config {
user_pool_id = aws_cognito_user_pool.this.id
aws_region = var.aws_region
default_action = "ALLOW"
}
}
