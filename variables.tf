/*variable "key_name" {
  description = "Desired name of AWS pair"
}
*/
variable "aws_region" {
  description = "AWS region to lauch servers."
  default     = "ap-northeast-2"
}

/*variable "public_key_path" {
  description = "local host connect remote host."
  default = 'xxx'
//  myhost: /etc/ssh/ssh_host_rsa_key.pub
}*/
