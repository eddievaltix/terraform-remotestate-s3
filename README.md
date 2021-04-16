# terraform-remotestate-s3
This Terraform module creates a simple s3 and DynamoDB backend to store Terraform remote state

## How to use:
reference this module in your Terraform template or simply create a main.tf with the below
```
provider "aws" {
// use your preferred region here
  region = "us-east-1"
}

module "remote_state" {
  source         = "github.com/eddievaltix/terraform-remotestate-s3"
  bucket         = "valtix-terraform-state"
  dynamodb_table = "terraform-state-backend"
}
```
## How to reference remote state after creating S3 bucket and DynamoDB lock table
```
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}
```
