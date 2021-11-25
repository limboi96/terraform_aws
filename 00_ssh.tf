resource "aws_key_pair" "hoseop_key" {
  key_name = "hoseop1-key"
  public_key = file("../../.ssh/hoseop-key.pub")
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRMVqvw+INqRayTIXuYZq741fmU8KiROWIvnjs1i4QbniWFeZEAQpR1iJtL6s7k/RkYiHdJ41jz3OW24dOmbI2iUNRRs4Sic0/ULQWi2P6eBynJLlIOM4pLEYUlPuP7yLw8FIb2OXKFte8QQ0sqCvBJiPyv40R/CtuemGeAbVrqA+mxVl1ghQnvswu1AGmhNX0XmBBnXf+cpY2ZKecViVuUIym+5nA5tT5raDGHv20nZbPt8FXJ+OYQsVJpdVEc6Dfsv6QDLqhzW9HMVmanjXrZ24anzN+8lSkx8kVVeAJlFob/fg/Lm6CGZQzm8SdP6UPF3lTV9UH3dupR6BGh9pT1zI0zZkpkyVkXTO0G38wehRsBG7um4OpSW5Rk+ASKxvdHIsTSFzAmxH6c/is5wEP+imq54CnKPQqGZqpXfMZOSeRpsIem+iOwFfjFucx+FUgDRrrnFvJUs8Flm6bEfSO1XhfHW9KxxkkFFyTpGp/OY6DeRChoYFXmkHA/B0fUxc="
}