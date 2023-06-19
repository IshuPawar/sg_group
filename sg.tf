terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
    region ="ap-south-1"  
} 
resource "aws_security_group" "testsg" {
  name = "testsg"
  description = "Allow HTTPS to web server"
  vpc_id = vpc-01011160921c8f7fe

  ingress {
    type = "ingress"
    description = "HTTP ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
 
  }
}
