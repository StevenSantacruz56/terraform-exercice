resource "aws_dynamodb_table" "apps_storage" {
  name           = "test_magnus"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "ImageId"
  range_key      = "LastUpdatedTime"

  attribute {
    name = "ImageId"
    type = "S"
  }

  attribute {
    name = "LastUpdatedTime"
    type = "S"
  }

  tags = {
    environment = "test"
    project     = "billie"
  }
}



