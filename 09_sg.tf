resource "aws_security_group" "hoseop_sg" {
  name        = "hoseop-sg"
  description = "HTTP_ICMP_SQL"
  vpc_id      = aws_vpc.hoseop_vpc.id

  ingress = [
    {
      description      = "ssh"
      from_port        = 22 #22번 포트부터
      to_port          = 22 #22번 포트까지 즉, 22번 포트만 허용
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"] #ipv6의 모든 아이피라는 의미
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "http"
      from_port        = 80 #80번 포트부터
      to_port          = 80 #80번 포트까지 즉, 80번 포트만 허용
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"] #ipv6의 모든 아이피라는 의미
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "icmp"
      from_port        = -1
      to_port          = -1
      protocol         = "icmp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"] #ipv6의 모든 아이피라는 의미
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "mysql"
      from_port        = 3306 #3306번 포트부터
      to_port          = 3306 #3306번 포트까지 즉, 3306번 포트만 허용
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"] #ipv6의 모든 아이피라는 의미
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  egress = [
    {
      description      = "all"
      from_port        = 0 #아무것도 지정하지 않을 때 0으로 표시
      to_port          = 0 #아무것도 지정하지 않을 때 0으로 표시
      protocol         = -1
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]
}
