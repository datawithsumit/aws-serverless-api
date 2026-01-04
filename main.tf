provider "aws" {
  region = "ap-south-1" 
}

# DynamoDB Table
resource "aws_dynamodb_table" "my_iac_table" {
  name           = "terraform-resume-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

# Seed Initial Data
resource "aws_dynamodb_table_item" "initial_count" {
  table_name = aws_dynamodb_table.my_iac_table.name
  hash_key   = "id"
  item = <<ITEM
{
  "id": {"S": "visitors"},
  "count": {"N": "0"}
}
ITEM
}