resource "aws_internet_gateway" "hoseop_ig" {
  vpc_id = aws_vpc.hoseop_vpc.id

  tags = {
    "Name" = "hoseop-ig"
  }
}