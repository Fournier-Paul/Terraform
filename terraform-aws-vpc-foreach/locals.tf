locals {
  subnets = {
    "10.1.0.0/24" = "us-east-1a"
    "10.1.1.0/24" = "us-east-1b"
    "10.1.2.0/24" = "us-east-1c"
  }

  region            = "us-east-1"
  cidr_block        = "10.1.0.0/16"
  route_to_internet = "0.0.0.0/0"
  date              = formatdate("DD-MM-YYYY", time_static.creation.rfc3339)
  user              = "pf"
  tags = {
    Name  = "${local.user}-${local.date}"
    Owner = local.user
    TP    = basename(abspath(path.root))
  }
}