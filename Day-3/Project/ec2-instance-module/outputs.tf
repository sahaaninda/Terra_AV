# outputs.tf

# Output the public IP of the created EC2 instance
output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.my_instance[*].public_ip
}
