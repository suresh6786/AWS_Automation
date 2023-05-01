

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXVUKJCAKW5USQCVM"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t3.micro"
  associate_public_ip_address = true

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_instance" "example" {
  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  associate_public_ip_address = true

  # Replace with your desired key pair name
  key_name = "my-keypair"

  # Replace with your desired security group ID(s)
  vpc_security_group_ids = ["sg-0f2cf67d70ca1f610"]
  subnet_id              = "subnet-099e05c063ef4d7e2"


  tags = {
    Name = "Example EC2 Instance"
  }
}
