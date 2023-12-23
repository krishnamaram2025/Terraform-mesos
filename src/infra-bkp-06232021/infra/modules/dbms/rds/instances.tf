resource "aws_db_instance" "mysqldb" {
  identifier           = "mysqldb"
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "cloudstones"
  username             = "cloud"
  password             = "Cloud_123"
  db_subnet_group_name = "${var.mydbsubnetgroup}"
  vpc_security_group_ids = ["${var.websg}"]
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
#  tags={
#  Name = "mydb"
#  }
}
