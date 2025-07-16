resource "aws_instance" "ejercicio" {
  ami               = "ami-0f3564425eaa7d1d8"
  instance_type     = var.ec2_size
  subnet_id         = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name          = var.ec2_keypair 
  user_data         = file("userdata.sh")
  associate_public_ip_address = true

  tags = {
    Name = "${var.app_name}-ec2"
  }
}
