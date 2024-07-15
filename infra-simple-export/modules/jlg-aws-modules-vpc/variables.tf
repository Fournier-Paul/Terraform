variable "vpc_cidr" {
  type        = string
  description = "CIDR du VPC"
}

variable "public_subnets_cidr" {
  type        = list(string)
  description = "List des CIDR des sous-reseaux"
}