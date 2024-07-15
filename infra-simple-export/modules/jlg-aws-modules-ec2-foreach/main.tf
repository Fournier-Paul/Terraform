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
  for_each = var.subnets
  ami           = data.aws_ami.amzn.id
  instance_type = "t3.medium"
  subnet_id     = each.value
  tags = {
    Name = "${var.name}-${each.key}"
  }
}