resource "aws_route_table_association" "x" {
  for_each       = aws_subnet.x
  subnet_id      = each.value.id
  route_table_id = aws_route_table.main.id
}