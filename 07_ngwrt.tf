resource "aws_route_table" "hoseop_ngwrt" {
  vpc_id = aws_vpc.hoseop_vpc.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.hoseop_ngw.id
  }
  tags = {
    "Name" = "hoseop-ngwrt"
  }
}

