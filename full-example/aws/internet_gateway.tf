resource "aws_internet_gateway" "igw" {
  tags = {
    Name = "${var.project_tag}-vpc"
  }

  tags_all = {
    Name = "${var.project_tag}-vpc"
  }

  vpc_id = "${aws_vpc.vpc_1.id}"
}

resource "aws_internet_gateway" "igw_2" {
  vpc_id = "${aws_vpc.vpc_2.id}"
}
