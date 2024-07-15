variable "subnet_id" {
    description = "Sous-reseau de l'instance"
    type = string
}

variable "number" {
  description = "Nombre d'instance à creer"
  type = number
  default = 1
}

variable "name" {
    description = "Prefix pour le nom de l'instance"
    type = string
}