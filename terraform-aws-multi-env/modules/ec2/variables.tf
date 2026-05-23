variable "ec2_instance_name" {
  description = "EC2 instance name"
  type        = string
  default     = "terra-automatic-server"
}

variable "ec2_volume_size" {
  description = "EC2 volume size"
  type        = number
  default     = 10
}

variable "aws_ec2_instance_state" {
  description = "EC2 instance state"
  type        = string
  default     = "stopped"
}

variable "ec2_ami_id" {
  description = "This variables holds instance ami ID"
  default     = "ami-07a00cf47dbbc844c"
  type        = string

}

variable "ec2_instance_type" {
  description = "This variables holds ec2 instance type"
  default     = "t3.micro"
  type        = string

}

variable "env" {
  description = "This variables holds the envirnoment "
  type        = string

}
variable "ec2_instance_count" {
  description = "This variables holds ec2 instance count"
  type        = number

}
