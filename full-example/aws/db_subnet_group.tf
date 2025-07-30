resource "aws_db_subnet_group" "application" {
  description = var.db_subnet_description
  name        = var.db_subnet_name
  subnet_ids  = ["${aws_subnet.subnet_1.id}", "${aws_subnet.subnet-2.id}"]
}
