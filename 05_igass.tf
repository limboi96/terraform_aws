#가용영역 A의 public
resource "aws_route_table_association" "hoseop_igas_puba" {
  subnet_id      = aws_subnet.hoseop_puba.id
  route_table_id = aws_route_table.hoseop_rt.id
}

#가용영역 C의 public
resource "aws_route_table_association" "hoseop_igas_pubc" {
  subnet_id      = aws_subnet.hoseop_pubc.id
  route_table_id = aws_route_table.hoseop_rt.id
}