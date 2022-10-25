resource "aws_security_group" "gitlab_runner_sg" {
  name	 = "gitlab_runner_sg"
  description = "security group for gitlab-runner server"

  ingress {
    from_port 	        = 22
    to_port  	        = 22
    protocol 	        = "tcp"
    cidr_blocks 	= ["0.0.0.0/0"]
    ipv6_cidr_blocks 	= ["::/0"]
  }

  ingress {
    from_port           = 3000
    to_port             = 3000
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port           = 8088
    to_port             = 8088
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port           = 9080
    to_port             = 9080
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  egress {
    from_port	        = 0
    to_port	        = 0
    protocol	        = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }
}

resource "aws_security_group" "production_sg" {
  name        = "production-sg"
  description = "SG for production redmine server"

  ingress {
    from_port           = 22
    to_port             = 22
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port          = 8080
    to_port            = 8080
    protocol           = "tcp"
    cidr_blocks        = ["0.0.0.0/0"]
    ipv6_cidr_blocks   = ["::/0"]
  }

  ingress {
    from_port          = 8081
    to_port            = 8081
    protocol           = "tcp"
    cidr_blocks        = ["0.0.0.0/0"]
    ipv6_cidr_blocks   = ["::/0"]
  }

  ingress {
    from_port          = 81
    to_port            = 81
    protocol           = "tcp"
    cidr_blocks        = ["0.0.0.0/0"]
    ipv6_cidr_blocks   = ["::/0"]
  }

  ingress {
    from_port          = 8088
    to_port            = 8088
    protocol           = "tcp"
    cidr_blocks        = ["0.0.0.0/0"]
    ipv6_cidr_blocks   = ["::/0"]
  }

  ingress {
    from_port          = 9080
    to_port            = 9080
    protocol           = "tcp"
    cidr_blocks        = ["0.0.0.0/0"]
    ipv6_cidr_blocks   = ["::/0"]
  }

  egress {
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }
}

resource "aws_security_group" "monitoring_sg" {
  name   = "monitoring_sg"
  description = "security group for monitoring server"

  ingress {
    from_port           = 22
    to_port             = 22
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port           = 3000
    to_port             = 3000
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port           = 3100
    to_port             = 3100
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }

  ingress {
    from_port           = 9090
    to_port             = 9090
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }


  egress {
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }
}
