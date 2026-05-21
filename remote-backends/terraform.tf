terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.45"
    }
  }

  backend "s3" {
    bucket         = "tws-batch-10-remote-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tws-batch-10-remote-table"
  }
}
