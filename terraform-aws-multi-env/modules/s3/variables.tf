variable "s3_bucket_name" {
  description = "This variables hold s3 bucket name"
  default     = "tws-my-app-bucket"
  type        = string
  
}

variable "env" {
  description = "This variables holds the envirnoment "
  type        = string

}

variable "s3_bucket_count" {
  description = "This holds s3_bucket_count"
  type =number
  
}
