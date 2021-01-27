variable "region" {
  description = "AWS region"
}
variable "bucket" {
  description = "name of the S3 bucket to be used for Terraform remote state storage"
}
variable "dynamodb_table" {
  description = "name of the dynamodb table to be created to handle Terraform remote state locking"
}
