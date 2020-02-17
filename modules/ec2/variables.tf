//input variable
variable "ami_id" {
  description = "A test var"
  type        = string
  default     = "xxxx"
}

variable "subnet_id"{
  type = string
  description = "Your instance subnet id"
  default = "subnet-00e19262c15c1de8b"
}

variable "volume_size"{
  description = "Instance root device size"
  default = 4
}

variable "ssh_key_pair"{
  type = string
  description = "Instance login key pair name"
  default = "mykey"
}

variable "security_group"{
  type = list
  description = "Instance security group"
  default = ["sg-017e90ce7d6cd9b97"]
}
variable "private_ip_indicate"{
  type = bool
  description = "Instance private ip indicate"
  default = false
}
variable "private_ip"{
  type = string
  description = "Instance private ip"
  default = "192.168.1.136"
}
