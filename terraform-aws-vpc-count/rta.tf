resource "aws_route_table_association" "x" {
  count          = local.subnet_count
  subnet_id      = aws_subnet.x[count.index].id
  route_table_id = aws_route_table.main.id
}