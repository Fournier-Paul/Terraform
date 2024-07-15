output "ids" {
  value = [ for i in aws_instance.web : i.id ]
}

output "ips" {
  value = [ for i in aws_instance.web : i.private_ip ]
}