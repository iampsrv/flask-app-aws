provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  instance_type = var.instance_type
  ami   = var.ami_id
  count = var.number_of_instances
  vpc_security_group_ids = ["sg-02d85b5dd5f74c7a7"]
  tags = {
    Name = "myec2instance2"
  }
  user_data = "${file("start.sh")}"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "My tf bucket"
  }
}
