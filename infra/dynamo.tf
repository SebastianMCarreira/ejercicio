resource "aws_dynamodb_table" "example" {
  name           = "${var.app_name}-dyn"
  billing_mode   = "PAY_PER_REQUEST" # On-demand capacity
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "${var.app_name}-dyn"
  }
}
