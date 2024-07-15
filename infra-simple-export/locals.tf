locals {
  region = "us-east-1"
  date   = formatdate("DD-MM-YYYY", time_static.creation.rfc3339)
  user   = "pf"
  tags = {
    Name  = "${local.user}-${local.date}"
    Owner = local.user
    TP    = basename(abspath(path.root))
  }
}

locals {
  vpc_cidr = "10.3.0.0/16"
  subnets  = cidrsubnets(local.vpc_cidr, 8, 8)
}