package terraform.module_only

deny[msg] {
  count(input.resource_changes) > 0
  msg := "Direct resource usage is not allowed. Use approved Terraform modules only."
}
