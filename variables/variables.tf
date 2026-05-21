variable " ec2_insatnce_name"{
    description = "This variables holds EC2 instance name"
    default = "terra-automate-server"
    type = string
}


variable " ec2_volume-size"{
    description = "This variables holds EC2 instance volume size"
    default = 10
    type = number
}

variable " aws_ec2_instance_state"{
    description = "This variables holds EC2 instance state"
    default = running
    type = string
}
