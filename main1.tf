provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  instance_type = var.instance_type
  ami   = var.ami_id
  count = var.number_of_instances
  vpc_security_group_ids = [aws_security_group.example.id]

  tags = {
    Name = "myec2instance2"
  }
  user_data = "${file("start.sh")}"
}

resource "aws_security_group" "example" {
  name_prefix = "example-sg-"
  description = "Example security group"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "My tf bucket"
  }
}
