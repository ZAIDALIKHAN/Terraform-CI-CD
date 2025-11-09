module "vpc" {
  source               = "../../modules/vpc"
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  name_prefix          = var.name_prefix
  allowed_ssh_cidr     = var.allowed_ssh_cidr
}

module "ec2" {
  source = "../../modules/ec2"
  ami_id              = var.ami_id
  instance_type       = var.instance_type
  subnet_id          = module.vpc.public_subnet_ids[0]      # ✅ correct output name
  security_group_ids = [module.vpc.public_sg_id]            # ✅ correct output namekey_name            = var.key_name
  instance_name       = "prod-jenkins-controller"
  tags                = var.tags
  key_name            = var.key_name
}
