resource "aws_lb_target_group_attachment" "hoseop_albtgatt" {
  target_group_arn = aws_lb_target_group.hoseop_albtg.arn
  target_id        = aws_instance.hoseop_web.id
  port             = 80
}
