# Backend configuration for storing Terraform state.
terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = "terraform/state/terraform.tfstate"
    region         = var.region
    dynamodb_table = "${var.s3_bucket_name}-locks" # Optional: Uncomment if using DynamoDB for locking.
    encrypt        = true
  }
}
