resource "aws_ami_from_instance" "hoseop_ami" {
  name = "hoseop-ami"
  source_instance_id = aws_instance.hoseop_web.id
  depends_on = [
    aws_instance.hoseop_web
  ]

}