provider "aws" {
  region = "us-west-2"
  access_key = "YOUR-AWS-ACCESS-KEY"
  secret_key = "YOUR-AES-SECRET-KEY"
}

resource "aws_key_pair" "terraform-key" {
  key_name = "terraform-key"
  public_key = "${file("${path.module}/terraform-key.pub")}"
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_all"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_ssh"
  }
}

# AWS instances are defind from here

resource  "aws_instance" "dswarm-1" {
  ami = "ami-6e1a0117"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.terraform-key.key_name}"
  security_groups = [ "${aws_security_group.allow_all.name}" ]
  tags {
     Name = "dswarm-1"
  }
}

resource  "aws_instance" "dswarm-2" {
  ami = "ami-6e1a0117"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.terraform-key.key_name}"
  security_groups = [ "${aws_security_group.allow_all.name}" ]
  tags {
     Name = "dswarm-2"
  }
}

resource  "aws_instance" "dswarm-3" {
  ami = "ami-6e1a0117"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.terraform-key.key_name}"
  security_groups = [ "${aws_security_group.allow_all.name}" ]
  tags {
     Name = "dswarm-3"
  }
}
