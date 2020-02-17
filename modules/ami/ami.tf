data "aws_ebs_volume""ebs_volume"{
  most_recent = true
  filter {
   name = "volume-type"
   values = ["gp2"]
  }
  filter{
   name = "tag:Name"
   values = ["myec2_disk"]
  }
}
resource "aws_ebs_snapshot" "myvolume_snapshot"{
  volume_id = data.aws_ebs_volume.ebs_volume.id
  tags ={
   Name = "My ec2 snapshot"
  }
}

resource "aws_ami" "myami"{
  name = "myami"
  virtualization_type = "hvm"
  root_device_name = "/dev/xvda"
  ebs_block_device {
   device_name = "/dev/xvda"
   snapshot_id = aws_ebs_snapshot.myvolume_snapshot.id
   volume_size = 8
  }
}

output "myami"{
  value = aws_ami.myami.id
}
