
resource "aws_dynamodb_table" "chat_history" {
name = "${var.project_name}-chat-history"
billing_mode = "PAY_PER_REQUEST"
hash_key = "session_id"
range_key = "timestamp"


attribute {
name = "session_id"
type = "S"
}


attribute {
name = "timestamp"
type = "S"
}
}
