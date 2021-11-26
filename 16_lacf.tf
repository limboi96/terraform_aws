resource "aws_launch_configuration" "hoseop_lacf" {
  name                 = "hoseop-lacf"
  image_id             = aws_ami_from_instance.hoseop_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.hoseop_sg.id]
  key_name             = "hoseop1-key"
  user_data            = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF

}
