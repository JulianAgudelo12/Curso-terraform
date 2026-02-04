resource "aws_instance" "public_instance" {
  ami                    = "ami-0532be01f26a3de55"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]

  /*  
  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      ami,subnet_id
    ]
    prevent_destroy = true
    
    replace_triggered_by = [
      aws_subnet.private_subnet.id
    ]
  }
  */
}



