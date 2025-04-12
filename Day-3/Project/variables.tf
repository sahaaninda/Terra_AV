# variables.tf

# The AWS region where the EC2 instance will be created
variable "region" {
  description = "The AWS region where the EC2 instance will be created"
  type        = string
  default     = "us-east-1" # Default region
}

# The AMI ID to use for the EC2 instance
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

# Instance type (e.g., t2.micro)
variable "instance_type" {
  description = "The instance type to create"
  type        = string
  default     = "t2.micro"
}

# Name for the EC2 instance
variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "aninda-ec2-instance"
}

# The number of EC2 instances to launch
variable "instance_count" {
  description = "The number of EC2 instances to launch"
  type        = number
  default     = 1
}
