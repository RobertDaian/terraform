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