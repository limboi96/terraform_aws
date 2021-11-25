resource "aws_eip" "hoseop_ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "hoseop_ngw" {
  allocation_id = aws_eip.hoseop_ngw_ip.id
  subnet_id     = aws_subnet.hoseop_puba.id
  tags = {
    "Name" = "hoseop-ngw"
  }
}
