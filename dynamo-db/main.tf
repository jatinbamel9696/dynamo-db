resource "aws_dynamodb_table" "s3_access_inventory_table" {
  name           = var.s3_access_inventory_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  attribute {
    name = "id"
    type = "S"
  }
  tags = var.tags
}

resource "aws_dynamodb_table" "s3_access_inventory_summary_table" {
  name           = var.s3_access_inventory_summary_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  range_key      = "timestamp"
  attribute {
    name = "id"
    type = "S"
  }
  attribute {
    name = "timestamp"
    type = "N"
  }
  tags = var.tags
}
