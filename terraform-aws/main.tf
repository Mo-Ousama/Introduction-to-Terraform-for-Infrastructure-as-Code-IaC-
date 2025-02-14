provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_vm" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI for Ubuntu (check the latest AMI in your region)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-VM"
  }
}
