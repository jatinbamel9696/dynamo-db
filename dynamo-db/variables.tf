variable "s3_access_inventory_table_name" {
  type        = string
  description = "The name of the DynamoDB table for storing S3 access inventory."
}

variable "s3_access_inventory_summary_table_name" {
  type        = string
  description = "The name of the DynamoDB table for storing S3 access inventory summary."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
  default     = {}
}