terraform {
  backend "s3" {
    bucket         = "zaiduu-terraform-backend"   # your S3 bucket name
    key            = "prod/terraform.tfstate"     # unique path per environment
    region         = "us-east-1"                  # bucket region
    dynamodb_table = "terraform-locks"            # DynamoDB table for state locking
    encrypt        = true
  }
}

