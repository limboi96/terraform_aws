resource "aws_db_instance" "hoseop_mydb" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  name                   = "mydb"
  identifier             = "database-1"
  username               = "admin"
  password               = "lim52309"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.hoseop_dbsg.id
  vpc_security_group_ids = [aws_security_group.hoseop_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "hoseop-db"
  }
}

resource "aws_db_subnet_group" "hoseop_dbsg" {
  name       = "hoseop-dbsg"
  subnet_ids = [aws_subnet.hoseop_pridba.id, aws_subnet.hoseop_pridbc.id]
}
