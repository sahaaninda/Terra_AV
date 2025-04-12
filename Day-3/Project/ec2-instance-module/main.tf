# main.tf

provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "my_instance" {
  count             = var.instance_count
  ami               = var.ami_id
  instance_type     = var.instance_type
  
  # Enable public IP
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }

  # Add more configurations as needed (e.g., block device mappings, monitoring)
}
