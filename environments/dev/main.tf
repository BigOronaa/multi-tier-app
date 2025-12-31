module "ec2" {
  source = "../../modules/ec2"

  ami_id                = "ami-0c398cb65a93047f2" # Ubuntu 22.04
  instance_type         = "t3.small"
  key_name              = "ansible-key-ci"
  subnet_id             = "subnet-0399a0b1b9334985a"
  vpc_security_group_ids = ["sg-03dcc1ffb9261c271"]
}

module "ec2_wp2" {
  source = "../../modules/ec2"

  ami_id                = "ami-0c398cb65a93047f2"
  instance_type         = "t3.small"
  key_name              = "ansible-key-ci"
  subnet_id             = "subnet-0399a0b1b9334985a"
  vpc_security_group_ids = ["sg-03dcc1ffb9261c271"]
}

module "ec2_nodejs" {
  source = "../../modules/ec2"

  ami_id                = "ami-0c398cb65a93047f2"
  instance_type         = "t3.small"
  key_name              = "ansible-key-ci"
  subnet_id             = "subnet-0399a0b1b9334985a"
  vpc_security_group_ids = ["sg-03dcc1ffb9261c271"]
}

module "mysql" {
  source = "../../modules/ec2"

  ami_id                = "ami-0c398cb65a93047f2"
  instance_type         = "t3.small"
  key_name              = "ansible-key-ci"
  subnet_id             = "subnet-0399a0b1b9334985a"
  vpc_security_group_ids = ["sg-03dcc1ffb9261c271"]
}

module "load_balancer" {
  source = "../../modules/ec2"

  ami_id                = "ami-0c398cb65a93047f2"
  instance_type         = "t3.small"
  key_name              = "ansible-key-ci"
  subnet_id             = "subnet-0399a0b1b9334985a"
  vpc_security_group_ids = ["sg-03dcc1ffb9261c271"]
}
