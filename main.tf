provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL1" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "Terraform_Keypair"
  tags = {
    Name = "RHEL"
  }
}
resource "aws_instance" "Ubuntu1" {
  count         = 1
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.medium"
  key_name      = "Terraform_Keypair"
  tags = {
    Name = "Ubuntu"
  }
}

