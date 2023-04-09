variable "table1_name" {
  type        = string
  description = "Name of the first DynamoDB table"
}

variable "table2_name" {
  type        = string
  description = "Name of the second DynamoDB table"
}

variable "partner_account_id_attr_name" {
  type        = string
  description = "Name of the partition key for the first table"
  default     = "PartnerAccountID"
}

variable "bucket_name_attr_name" {
  type        = string
  description = "Name of the partition key for the second table"
  default     = "BucketName"
}

variable "s3_access_id_attr_name" {
  type        = string
  description = "Name of the sort key for the second table"
  default     = "S3AccessID"
}

variable "backup_enabled" {
  type        = bool
  description = "Whether backup should be enabled for the tables"
  default     = true
}

variable "table1_read_capacity" {
  type        = number
  description = "The number of read capacity units to provision for the first table"
  default     = 10
}

variable "table1_write_capacity" {
  type        = number
  description = "The number of write capacity units to provision for the first table"
  default     = 10
}

variable "table2_read_capacity" {
  type        = number
  description = "The number of read capacity units to provision for the second table"
  default     = 10
}

variable "table2_write_capacity" {
  type        = number
  description = "The number of write capacity units to provision for the second table"
  default     = 10
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resources."
  default     = {}
}