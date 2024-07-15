# Root module appelant un module enfant
module "vpc" {
  source              = "./modules/pf-aws-modules-vpc"
  vpc_cidr            = local.vpc_cidr
  public_subnets_cidr = local.subnets
}
