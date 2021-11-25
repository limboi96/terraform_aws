resource "aws_route_table" "hoseop_rt" {
  vpc_id = aws_vpc.hoseop_vpc.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hoseop_ig.id
  }
  tags ={
      "Name" = "hoseop-rt"
  } 
}