data "aws_subnet_ids" "myvpc_subnet"{
  vpc_id = var.myvpc_id
}

data "aws_subnet" "subnet_info"{
  for_each = data.aws_subnet_ids.myvpc_subnet.ids
  id = each.value
}

data "aws_availability_zones" "azs"{
  state = "available"
}
resource "aws_efs_file_system" "myefs"{
  creation_token = "my-bambo-efs"
  tags = {
   Name = "myefs"
  }
  lifecycle_policy{
   transition_to_ia = "AFTER_30_DAYS"
  }
}

resource "aws_efs_mount_target" "myefs_target"{
  file_system_id = aws_efs_file_system.myefs.id
  for_each = local.subnet
  subnet_id = each.value[0]
  
}

locals{
  subnet = {for s in data.aws_subnet.subnet_info: "${s.availability_zone}" => s.id...}
}

output "subnet_info"{
  value = local.subnet
}
