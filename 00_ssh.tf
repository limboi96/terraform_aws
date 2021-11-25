resource "aws_key_pair" "hoseop_key" {
  key_name = "hoseop1-key"
  public_key = file("../../.ssh/hoseop-key.pub")
}