
resource "aws_opensearchserverless_collection" "vector" {
name = "${var.project_name}-vectors"
type = "VECTORSEARCH"
}
