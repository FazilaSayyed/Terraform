provider "aws" {
  access_key = ""
  secret_key = ""
}


resource "aws_iam_user" "batch38iamuser1" {
  name = "batch381"
  path = "/"

  tags = {
    name = "batch381"
  }
}
