output "post_install_instructions" {
  value = templatefile("${path.module}/post_install.tftpl", local.post_install_vars)
}

output "filedrop" {
  value = observe_filedrop.aws_filedrop
}
