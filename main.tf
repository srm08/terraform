# Specify the provider and region
provider "aws" {
  region = "ap-southeast-2" # Replace with your desired region
}

# Create a security group to allow SSH access
resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Allow SSH inbound traffic"

  # Allow inbound SSH traffic on port 22
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
  security_groups = [aws_security_group.example.name]
  
  # Tag the instance for easier identification
  tags = {
    Name = "TerraformExampleInstance"
  }
}

# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
