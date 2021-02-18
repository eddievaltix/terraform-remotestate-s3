# terraform-remotestate-s3
This Terraform module creates a simple s3 and dynamodb backend to store Terraform remote state

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
