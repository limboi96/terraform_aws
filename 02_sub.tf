#가용 영역 A의 public subnet

resource "aws_subnet" "hoseop_puba" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "hoseop-puba"
  }
}

#가용 영역 C의 public subnet

resource "aws_subnet" "hoseop_pubc" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "hoseop-pubc"
  }
}

#가용영역 A의 private subnet

resource "aws_subnet" "hoseop_pria" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "hoseop-pria"
  }
}

#가용영역 C의 private subnet

resource "aws_subnet" "hoseop_pric" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "hoseop-pric"
  }
}

#가용영역 A의 private DB subnet

resource "aws_subnet" "hoseop_pridba" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "hoseop-pridba"
  }
}

#가용영역 C의 private DB subnet

resource "aws_subnet" "hoseop_pridbc" {
  vpc_id            = aws_vpc.hoseop_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "hoseop-pridbc"
  }
}
