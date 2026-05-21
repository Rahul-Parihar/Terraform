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
  default     = "running"
}
