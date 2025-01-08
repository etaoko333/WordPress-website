data "aws_ami" "os_image" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["ubuntu/images/*"]
  }
  filter {
    name   = "architecture" # Correct filter name
    values = ["x86_64"]     # Or "arm64" based on your requirements
  }
}

resource "aws_key_pair" "my_key" {
  key_name   = "ecommerce-key"           # The key name
  public_key = file("ecommerce-key.pub") # Specifies the public key file
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "my_sg" {
  name        = "My Security"
  description = "This is an SG created using Terraform"
  vpc_id      = aws_default_vpc.default.id

  # Ingress rules for incoming traffic
  ingress {
    description = "Allow access to SSH port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow access to HTTP port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 ingress {
    description = "Ye Port FrontEnd ke liye hain"
    from_port   = 8100
    to_port     = 8100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    description = "Ye Port Mysql Ke liye hain"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Egress rules for outgoing traffic
  egress {
    description = "Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Ecommerce-webiste"
  }
}

resource "aws_instance" "my_ec2" {
  #count                       = var.aws_instance_count # ye 2 replias banae ga with name ke sath 
  for_each                    = local.instances #ye bhi same hain 2 instance banae ga with name ke sath 
  ami                         = data.aws_ami.os_image.id # Replace with a valid AMI ID for your region
  instance_type               = var.aws_ec2_instance_type
  security_groups             = [aws_security_group.my_sg.name]
  key_name                    = aws_key_pair.my_key.key_name
  associate_public_ip_address = true

  root_block_device {
    volume_size = var.aws_root_volume_size
    volume_type = "gp2"
  }
  tags = {
    Name = each.value
  }
}
