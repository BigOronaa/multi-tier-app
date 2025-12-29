provider "aws" {
  region = "us-east-1"
}

# Example security groups
resource "aws_security_group" "wordpress_sg" {
  name        = "wordpress_sg"
  description = "Allow HTTP, HTTPS, SSH"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["<YOUR_IP>/32"]
  }
}

# Example: WordPress instance 1
module "wordpress_1" {
  source             = "../../modules/ec2"
  ami_id             = "<UBUNTU_AMI_ID>"
  instance_type      = "t2.micro"
  subnet_id          = "<YOUR_SUBNET_ID>"
  key_name           = "<YOUR_KEY_NAME>"
  security_group_ids = [aws_security_group.wordpress_sg.id]
  instance_name      = "wordpress_1"
}

# Similarly create wordpress_2, nodejs_todo, mysql, load_balancer
