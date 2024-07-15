# web4
resource "aws_instance" "web4" {
  ami               = data.aws_ami.amzn.id
  instance_type     = "t3.medium"
  subnet_id         = aws_subnet.private_b.id
  availability_zone = "us-east-1b"
  vpc_security_group_ids = [
    aws_security_group.allow_8080.id
  ]
  user_data = data.template_file.web.rendered
}

resource "aws_lb_target_group_attachment" "web4" {
  depends_on       = [aws_instance.web4]
  target_group_arn = aws_lb_target_group.web.arn
  target_id        = aws_instance.web4.id
  port             = 8080
}