data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_security_group" "apache_allow_http_ssh" {
  name        = "apache_allow_http_ssh"
  description = "Allow HTTP and SSH inbound traffic to apache"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDMM62Dh53SYibvADpayBdOw/fE24zGl71kMKGvYsJ7OY/pDFP5PTJ8BGuEucWSCV4tQGxlWAgHlJd5XDZtSXXjm3I14/Zac5GFIhh5+SqVOnNU9HyRRopqM4mTSznF9zmJfzaYYqJB+oRsEo55wGFsOpuBmPNCepYQuaqu5JEjIA157c6g5sD/hkd4b3LpSa6mypg+5IdFEtpNmDi+iiLBd154HkhDhvfzwpWvhzkMCIL6PU+u9C4XJrhdAzajkTeHuGaU5xoFU8N1uGd4X8SUKSfDvaN0HwHDD9XQWiHt4yWWyDivTsBuqUfmy0Pv/rdoZmH6oTcvu6GC39UacBMwYarCxEfjFLuFot/WoVbTxgAQDw+P0uwMEKE0F0Zj2xzr0C48mxrXJ3FW4bK++CfFAISK6Devg5Cu6cpz2a6nAXqt12Iql8wM3yfWJv6IhvWsDWSWwj20cJXBqUcrwXTvUikmqUAcdQndAn6/1xeLbCYmid6eGwoUidc/ug51p4UL1a3DJQ7jYuoS3viG/MOUeogkkBEzvwiPAZuY72/CPSKKyRVsw91PiepZfv5ZXB7FGjyfiwDAIqFp6HFvodU2zgkoSDndA3cIY3iUtksIktnptEb/guxPLJAHMfbuwt29/jzEG6WCVMJUmGV1zcGLRwNGMs1I0+imLL4ASlhqAw== arthurbdiniz@gmail.com"
}

resource "aws_instance" "web" {
  ami                         = data.aws_ami.amazon-linux-2.id
  associate_public_ip_address = true
  instance_type               = "t2.micro"
  security_groups             = [aws_security_group.apache_allow_http_ssh.name]
  key_name                    = aws_key_pair.deployer.key_name
  user_data                   = file("./setup.sh")

  tags = {
    Name = "Apache"
  }
}

output "IP" {
  value = "${aws_instance.web.public_ip}"
}