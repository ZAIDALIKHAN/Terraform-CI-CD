aws_region           = "us-east-1"
vpc_cidr             = "10.0.0.0/16"
azs                  = ["us-east-1a", "us-east-1b"]
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
name_prefix          = "prod"
allowed_ssh_cidr = "0.0.0.0/0"  # or your IP

ami_id                   = "ami-0e86e20dae9224db8"
instance_type            = "m7i-flex.large"
key_name                 = "Pair"
instance_name            = "prod-jenkins-controller"

