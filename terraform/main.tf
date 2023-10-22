provider "aws" {
region = "ap-southeast-2"
access_key = "AKIA2VGJUPMDLZHRZLPP"
secret_key = "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"
}

resource "aws_instance" "Key" {
ami = "ami-023e1b810cda5ce69"
instance_type = "t2.micro"
key_name = "oct22"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Environment = "dev"
Name = "project_instance"
}
}
