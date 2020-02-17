output "ec2_public_ip" {
  value = "${module.ec2.myec2_public_ip}"
}
output "ec2_private_ip" {
  value = "${module.ec2.myec2_private_ip}"
}
output "ec2_id" {
  value = "${module.ec2.myec2_id}"
}
output "ec2_volume"{
  value = "${module.ec2.myec2_volume} GiB"
}

output "volume_snapshot"{
  value = module.ami.myami
}
