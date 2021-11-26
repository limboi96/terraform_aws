resource "aws_placement_group" "hoseop_pg" {
  name     = "hoseop-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "hoseop_atsg" {
  name                      = "hoseop-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.hoseop_lacf.name
  #placement_group           = aws_placement_group.hoseop_pg.id
  vpc_zone_identifier       = [aws_subnet.hoseop_puba.id, aws_subnet.hoseop_pubc.id]
}
