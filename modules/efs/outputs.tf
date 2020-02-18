output "myefs_targets_id"{
  value = [for s in aws_efs_mount_target.myefs_target: s.id]
}

output "myefs_targets_dns_name"{
  value = [for s in aws_efs_mount_target.myefs_target: s.dns_name]
}

output "myefs_id"{
  value = aws_efs_file_system.myefs.id
}
