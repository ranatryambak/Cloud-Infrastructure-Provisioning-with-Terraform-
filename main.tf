provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet1.id

  tags = {
    Name = "TerraformEC2"
  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "${var.project_name}-bucket"
  force_destroy = true
}
