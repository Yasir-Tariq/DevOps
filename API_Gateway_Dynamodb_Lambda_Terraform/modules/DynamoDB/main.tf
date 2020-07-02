resource "aws_dynamodb_table" "MyDB" {
  name           = var.dbname
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "Student_ID"
  attribute {
    name = "Student_ID"
    type = "S"
  }
  tags = {
    Name        = "Lambda_DynamoDB_Table"
  }
}