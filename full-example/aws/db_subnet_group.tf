resource "aws_db_subnet_group" "application" {
  description = "application"
  name        = "application"
  subnet_ids  = ["${aws_subnet.subnet_1.id}", "${aws_subnet.subnet-2.id}"]
}
