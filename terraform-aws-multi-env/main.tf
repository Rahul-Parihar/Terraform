locals {
  env = {
    dev = {
      instance_count       = 2
      bucket_count         = 1
      dynamodb_table_count = 1
    }
    stg = {
      instance_count       = 1
      bucket_count         = 1
      dynamodb_table_count = 1

    }

    prd = {
      instance_count       = 1
      bucket_count         = 2
      dynamodb_table_count = 1

    }



  }

  current = lookup(local.env, terraform.workspace, local.env["dev"])
}




module "ec2" {
  source             = "./modules/ec2"
  env                = terraform.workspace
  ec2_instance_count = local.current.instance_count

}


module "s3" {
  source          = "./modules/s3"
  env             = terraform.workspace
  s3_bucket_count = local.current.bucket_count

}


module "dynamodb" {
  source               = "./modules/dynamodb"
  env                  = terraform.workspace # dev this is assigned during runtime
  dynamodb_table_count = local.current.dynamodb_table_count

}

