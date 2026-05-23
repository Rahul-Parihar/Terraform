resource "aws_dynamodb_table" "my-dynamodb-table" {
  count = var.dynamodb_table_count
  name = "${var.env}-tws-batch-10-my-app-bucket-${count.index + 1}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LOCKID"

  attribute {
    name = "LOCKID"
    type = "S"
  }

  tags = {
    envirnoment = var.env
  }

}

