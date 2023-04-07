output "s3_access_inventory_table_arn" {
  value = aws_dynamodb_table.s3_access_inventory_table.arn
}

output "s3_access_inventory_summary_table_arn" {
  value = aws_dynamodb_table.s3_access_inventory_summary_table.arn
}
