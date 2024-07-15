data "aws_ami" "amzn" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name = "name"
    values = [
      "al2023-ami-2023.*-x86_64"
    ]
  }
}

resource "aws_instance" "web" {
  count = var.number
  ami           = data.aws_ami.amzn.id
  instance_type = "t3.medium"
  subnet_id     = var.subnet_id
  tags = {
    Name = "${var.name}-${count.index + 1}"
  }
}