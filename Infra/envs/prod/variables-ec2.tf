variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "m7i-flex.large"
}

#variable "ec2_subnet_id" {
#  type        = string
#  description = "Subnet ID for the EC2 instance"
#}

#variable "ec2_security_group_ids" {
#  type        = list(string)
#  description = "Security groups for the EC2 instance"
#}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH"
}

variable "instance_name" {
  type        = string
  description = "Tag name for the EC2 instance"
}

variable "tags" {
  type        = map(string)
  description = "Common tags"
  default     = {
    Environment = "prod"
    Project     = "ci-cd-infra"
  }
}

