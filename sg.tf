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
resource "aws_security_group" "asg" {
    name = "my_sg1"
    lifecycle {
      ignore_changes = [ ingress,egress ]
    }
   ingress { 
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]

   }
    egress { 
      from_port = 0
      to_port = 0
      protocol = -1
      cidr_blocks = ["0.0.0.0/0"]
      
   }

}
