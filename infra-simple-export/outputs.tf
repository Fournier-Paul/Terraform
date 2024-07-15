output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_subnets" {
  value = module.vpc.public_subnets
}

# output "ec2_ids" {
#   value = module.web.ids
# }
#
# output "ec2_ips" {
#   value = module.web.ips
# }