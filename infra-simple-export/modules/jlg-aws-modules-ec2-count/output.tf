output "ids" {
  value = aws_instance.web.*.id
}

output "ips" {
  value = aws_instance.web.*.private_ip
}