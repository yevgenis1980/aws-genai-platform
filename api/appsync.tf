
resource "aws_appsync_graphql_api" "chat_api" {
name = "${var.project_name}-api"
authentication_type = "API_KEY"
}


resource "aws_appsync_api_key" "key" {
api_id = aws_appsync_graphql_api.chat_api.id
}
