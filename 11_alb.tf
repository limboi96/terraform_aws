resource "aws_lb" "hoseop_alb" {
  name               = "hoseop-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.hoseop_sg.id]
  subnets            = [aws_subnet.hoseop_puba.id,aws_subnet.hoseop_pubc.id]
  tags = {
    "Name" = "hoseop-alb"
  }
}