variable "virginia_cidr" {
  description = "CIDR Virginia"
  type        = string
}

/*
variable "public_subnet" {
  description = "CIDR public subnet"
  type        = string
}

variable "private_subnet" {
  description = "CIDR private subnet"
  type        = string
}
*/

variable "subnets" {
  description = "Lista de Subnets"
  type        = list(string)
}

variable "tags" {
  description = ""
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "CIDR Segurity group IPV4"
  type        = string
}