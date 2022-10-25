resource "aws_instance" "gitlab_runner" {
  ami 		         = "ami-0fb653ca2d3203ac1"
  instance_type 	 = "t2.medium"
  vpc_security_group_ids = [aws_security_group.gitlab_runner_sg.id]
  user_data	         = "${file("install_docker")}"
  key_name 	         = var.key_name
 
  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = "gitlab-runner"
  }
}

resource "aws_instance" "production" {
  ami                    = "ami-0fb653ca2d3203ac1"
  instance_type          = "t2.medium"
  vpc_security_group_ids = [aws_security_group.production_sg.id]
  user_data              = "${file("install_docker")}"
  key_name               = var.key_name

  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = "production"
  }
}

resource "aws_instance" "monitoring" {
  ami                    = "ami-0fb653ca2d3203ac1"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]
  user_data              = "${file("install_docker")}"
  key_name               = var.key_name

  tags = {
    Name = "monitoring"
  }
}
