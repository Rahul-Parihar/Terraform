variable "dynamodb_table_name" {
  description = "This variables holds dynamodb table name"
  default     = "tws-batch-10-my-app-bucket"
  type        = string
  
}

variable "env" {
  description = "This variables holds the envirnoment "
  type        = string

}

variable "dynamodb_table_count" {
  description = "This holds dynamodb_table_count"
  type =number
  
}
