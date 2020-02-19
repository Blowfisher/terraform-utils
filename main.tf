provider "aws" {
  region = "ap-northeast-2"
  profile = "default"
}
/*
 module "ec2" {
 source  = "./modules/ec2"
//自定义已经存在的子网id
 subnet_id = "subnet-00e19262c15c1de8b"
//自定义root volume size
 volume_size = 3
//自定义已经创建好的ssh_key pair name
 ssh_key_pair = "mykey"
//自定义vpc 安全组id
 security_group = ["sg-017e90ce7d6cd9b97"]
}
*/

/*
module "ami"{
  source = "./modules/ami"
  
}
*/

module "efs"{
  source = "./modules/efs"
//请指定需要放置mount target的vpc
//  myvpc_id = ""
} 
