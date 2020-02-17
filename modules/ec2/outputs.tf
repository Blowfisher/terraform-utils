output "myec2_private_ip" {
  value = "${aws_instance.myec2.private_ip}"
}
output "myec2_public_ip" {
  value = "${aws_instance.myec2.public_ip}"
}
output "myec2_id" {
  value = "${aws_instance.myec2.id}"
}
output "myec2_volume"{
  value = data.aws_ebs_volume.ebs_volume.size
}
