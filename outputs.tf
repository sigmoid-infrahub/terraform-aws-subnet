output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.this.id
}

output "subnet_cidr" {
  description = "Subnet CIDR block"
  value       = aws_subnet.this.cidr_block
}

output "module" {
  description = "Full module outputs"
  value = {
    subnet_id   = aws_subnet.this.id
    subnet_cidr = aws_subnet.this.cidr_block
  }
}
