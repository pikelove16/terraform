
resource "aws_instance" "james" {
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name = "dev"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = var.Name
  description = "Allow TLS inbound traffic"

  ingress {
    description = var.description
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  ingress {
    description = var.ingress_description
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ingress_cidr_blocks
  }

  tags = {
    Name = "manual"
  }
}





