provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_instance" "microk8s-node" {
  count = 3
  ami           = "ami-02c2bab84f4c66a4b"
  instance_type = "t2.micro"
  subnet_id     = "subnet-37fd037f"
  associate_public_ip_address = false
  key_name = "cloud-dev-instance"
  tags = {
    Stack = "microk8s"
  }
}
