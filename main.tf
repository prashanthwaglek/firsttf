provider "aws" {
  region = "ap-south-1"
  profile = "root"
}

#vpc Creation
resource "aws_vpc" "myvpc" {
  cidr_block = var.maincidr
  tags = {
    Name = "Prod"
  }
}
#Subnet Creation
resource "aws_subnet" "mysub1" {
  cidr_block = var.mysubnet1
  vpc_id = aws_vpc.myvpc.id
  depends_on = [ aws_vpc.myvpc ]
}
#VM Creation
resource "aws_instance" "myvm" {
  ami = var.myami
  instance_type = var.myinstancetype
  subnet_id = aws_subnet.mysub1.id
  tags = {
    Name = "myvm01"
  }
}
