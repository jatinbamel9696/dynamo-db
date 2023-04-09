module "s3_access_inventory" {
  source = "./dynamo-db"
  
  table1_name                = "Table1"
  table2_name                = "Table2"
  partner_account_id_attr_name  = "PartnerAccountID"
  bucket_name_attr_name         = "BucketName"
  s3_access_id_attr_name        = "S3AccessID"
  backup_enabled                = true
  table1_read_capacity          = 5
  table1_write_capacity         = 5
  table2_read_capacity          = 5
  table2_write_capacity         = 5
  tags = {
    Name        = "s3_access_inventory_table"
    Environment = "production"
    Project     = "my_project"
  }
}