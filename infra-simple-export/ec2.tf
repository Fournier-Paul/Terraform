module "web" {
  source  = "./modules/pf-aws-modules-ec2-foreach"
  subnets = module.vpc.public_subnets
  name    = local.tags["Name"]
}
