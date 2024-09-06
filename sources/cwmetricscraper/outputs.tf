output "post_install_instructions" {
  value = templatefile("${path.module}/post_install.tftpl", local.post_install_vars)
}

output "role_name" {
  description = "Role name expected by poller."
  value       = var.name
}

output "role_arn" {
  description = "Role ARN expected by poller."
  value       = local.aws_role_arn
}

output "allowed_actions" {
  description = "Actions required by poller."
  value       = local.allowed_actions
}
