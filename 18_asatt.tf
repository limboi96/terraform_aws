resource "aws_autoscaling_attachment" "hoseop_asatt" {
  autoscaling_group_name = aws_autoscaling_group.hoseop_atsg.id
  alb_target_group_arn   = aws_lb_target_group.hoseop_albtg.arn
}
