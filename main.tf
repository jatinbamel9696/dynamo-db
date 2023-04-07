module "s3_access_inventory" {
  source = "./dynamo-db"
  
  s3_access_inventory_table_name       = "s3_access_inventory"
  s3_access_inventory_summary_table_name = "s3_access_inventory_summary"
  tags = {
    Name        = "s3_access_inventory_table"
    Environment = "production"
    Project     = "my_project"
  }
}