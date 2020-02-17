data "aws_ami" "t2_micro" {
  most_recent = true
  name_regex  = "amzn2*"
  owners      = ["137112412989"]
  filter {
    name   = "name"
    values = ["amzn2*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "myec2" {
  ami                         = data.aws_ami.t2_micro.id
  instance_type               = "t2.micro"
  key_name                    = var.ssh_key_pair 
  vpc_security_group_ids      = var.security_group
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true
  private_ip = var.private_ip_indicate ? var.private_ip:null
  volume_tags = {
    Name = "myec2_disk"
  }
  root_block_device {
   volume_size = var.volume_size
  }
  tags = {
    Name = "myec2"
  }
}

data "aws_ebs_volume" "ebs_volume"{
  most_recent = true
  filter{
   name = "volume-type"
   values = ["gp2"]
  }
  filter{
   name = "tag:Name"
   values = ["myec2_disk"]
  }
  depends_on = [aws_instance.myec2]
}

locals {
  volume_name = "myec2_disk"
  volume_type = "gp2"
}
