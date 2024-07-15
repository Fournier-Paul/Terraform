variable "subnets" {
    description = "Map de Sous-reseaux de(s) instance(s)"
    type = map(string)
}

variable "name" {
    description = "Prefix pour le nom de l'instance"
    type = string
}