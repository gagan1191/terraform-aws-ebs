resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1c"
  size              = 1
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = var.instance_id
}
