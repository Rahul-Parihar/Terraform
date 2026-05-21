#S3 bucket to handle state file
resource "aws_s3_bucket" "remote-s3-bucket" {
    bucket =  "tws-batch-10-remote-bucket"


 tags = { 
    Name = "tws-batch-10-remote-bucket"

     }
}

#dynamodb

resource "aws_dynamodb_table" "my-remote-dynamodb-table" {

    name = "josh-batch-10-remote-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LOCKID"

    attribute {
      name = "LOCKID"
      type = "S"
    }
  
}
