output "infra-public-ip" {
  value = aws_instance.test-infra.public_ip
}
 
output "infra-public-dns" {
  value = aws_instance.test-infra.public_dns
}
 
output "infra-private-ip" {
  value = aws_instance.test-infra.private_ip
}
 
