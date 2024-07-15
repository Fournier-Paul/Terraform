data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "x" {
  count             = local.subnet_count
  vpc_id            = aws_vpc.main.id
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "${local.tags["Name"]}-${count.index}"
  }
}