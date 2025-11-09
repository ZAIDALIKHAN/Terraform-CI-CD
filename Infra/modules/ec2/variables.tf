variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach"
  type        = list(string)
}

variable "key_name" {
  description = "Name of the key pair for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Tag name for the instance"
  type        = string
}

variable "tags" {
  description = "Common tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}

