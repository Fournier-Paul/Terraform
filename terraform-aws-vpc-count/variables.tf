variable "region" {
  description = "Region de l'infra"
  default     = "us-east-1"
  type        = string
}

variable "aws_profile" {
  description = "Profil de connnexion"
  default     = "default"
  type        = string
}
