variable "ami" {
  description = "creating ec2 instance"
  type        = string
  default     = "ami-0905a3c97561e0b69"

}
variable "Name" {
  default     = "allow_tls"
  type        = string
  description = "Allow TLS inbound traffic"

}

variable "description" {
  default     = "TLS from VPC"
  type        = string
  description = "tls"
}

variable "from_port" {
  default     = 443
  type        = number
  description = "ingress start"
}

variable "to_port" {
  default     = 443
  type        = number
  description = "ingress ends"
}

variable "protocol" {
  default     = "tcp"
  type        = string
  description = "ingress protocol"
}

variable "cidr_blocks" {
  default     = ["116.30.20.50/32"]
  type        = list(any)
  description = "cidrblocks ingress rule"

}
variable "ingress_description" {
  description = "Description for the ingress"
  type        = string
  default     = "TLS from VPC"
}

variable "ingress_from_port" {
  description = "port for ingress"
  type        = number
  default     = 80
}

variable "ingress_to_port" {
  description = "port for ingress"
  type        = number
  default     = 80
}

variable "ingress_protocol" {
  description = "Protocol for the ingress"
  type        = string
  default     = "tcp"
}

variable "ingress_cidr_blocks" {
  description = "List of CIDR blocks"
  type        = list(any)
  default     = ["116.30.20.50/32"]
}

