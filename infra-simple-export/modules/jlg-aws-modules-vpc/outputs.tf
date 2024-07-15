output "vpc_id" {
  description = "ID du VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "Map des sous-reseaux publiques"
  value       = { for k, v in aws_subnet.public : k => v.id }
}