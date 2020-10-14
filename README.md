# terraform-utils
-----------------

##### personal terraform util tools

```ec2 module : you need to set some var 
//自定义已经存在的子网id
 subnet_id = "subnet-00e19c1de8b"
//自定义root volume size(GiB)
 volume_size = 3
//自定义已经创建好的ssh_key pair name
 ssh_key_pair = "mykey"
//自定义vpc 安全组id
 security_group = ["sg-017e90ce7d6c"]
 
 ami module:
默认 volume-type: gp2
     tag:Name myec2_disk
     device_name: /dev/xvda
     ami_name: myami
     virtualization_type: hvm
     volume_size: 8GiB

EFS module:
//请指定需要放置mount target的vpc
   myvpc_id = ""
默认生命周期30天；vpc下的可用区都会创建mount target
```
