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

data "template_file" "web" {
  template = file("./scripts/deploy-web-container.yaml")
}