provider "aws" {
    version = "~>2.0"
    region = "us-east-1"

}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
        tags = {
      Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["sg-0c1e9204fe47ef1f5"]
}

resource "aws_security_group" "acesso-ssh"{
    name =        "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port = 22
        to_port   = 22
        protocol = "tcp"

    }
    tags = {
        name = "ssh"
    }
}

#teste1