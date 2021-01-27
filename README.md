# terraform-remotestate-s3
This Terraform module creates a simple s3 and dynamodb backend to store Terraform remote state

## How to use:
reference this module in your Terraform template using
```
module "remote_state" {
    source         = "github.com/eddievaltix/terraform-remotestate-s3"
    region         = "us-west-2"
    bucket         = "valtix-terraform-state"
    dynamodb_table = "terraform-state-backend"
}
```
