variable "instance_name" {
  description = "Name of the instance to be created"
  default     = "awsbuilder-demo"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "The AMI to use Ubuntu"
  default     = "ami-0557a15b87f6559cf"
}

variable "number_of_instances" {
  description = "number of instances to be created"
  default     = 1
}

variable "bucket_name" {
  description = "Name of S3 bucket"
  default     = "tfbucketps"
}
