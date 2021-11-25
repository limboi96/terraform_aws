resource "aws_route_table_association" "hoseop_ngwass_pria" {
  subnet_id      = aws_subnet.hoseop_pria.id
  route_table_id = aws_route_table.hoseop_ngwrt.id
}

resource "aws_route_table_association" "hoseop_ngwass_pric" {
  subnet_id      = aws_subnet.hoseop_pric.id
  route_table_id = aws_route_table.hoseop_ngwrt.id
}

resource "aws_route_table_association" "hoseop_ngwass_pridba" {
  subnet_id      = aws_subnet.hoseop_pridba.id
  route_table_id = aws_route_table.hoseop_ngwrt.id
}

resource "aws_route_table_association" "hoseop_ngwass_pridbc" {
  subnet_id      = aws_subnet.hoseop_pridbc.id
  route_table_id = aws_route_table.hoseop_ngwrt.id
}