resource "aws_dynamodb_table" "table1" {
  name             = var.table1_name
  billing_mode     = "PROVISIONED"
  hash_key         = var.partner_account_id_attr_name
  read_capacity    = var.table1_read_capacity
  write_capacity   = var.table1_write_capacity
  attribute {
    name = var.partner_account_id_attr_name
    type = "N"
  }


  server_side_encryption {
    enabled = true
  }
  point_in_time_recovery {
    enabled = var.backup_enabled
  }
  
}

resource "aws_dynamodb_table" "table2" {
  name             = var.table2_name
  billing_mode     = "PROVISIONED"
  hash_key         = var.bucket_name_attr_name
  range_key        = var.s3_access_id_attr_name
  read_capacity    = var.table2_read_capacity
  write_capacity   = var.table2_write_capacity
  attribute {
    name = var.bucket_name_attr_name
    type = "S"
  }

  attribute {
    name = var.s3_access_id_attr_name
    type = "S"
  }
  server_side_encryption {
    enabled = true
  }
  point_in_time_recovery {
    enabled = var.backup_enabled
  }

}
