resource "aws_instance" "nginx" {
  ami                         = "ami-0a695f0d95cefc163"
  instance_type               = "t2.micro"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  tags = {
    Name = "ec2"
  }
}