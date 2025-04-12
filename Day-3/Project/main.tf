# main.tf (Root Project Folder)

module "ec2_instance" {
  source = "./ec2-instance-module" # Path to the module you created

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  region         = var.region
  instance_name  = var.instance_name
}

output "ec2_public_ip" {
  value = module.ec2_instance.instance_public_ip
}
