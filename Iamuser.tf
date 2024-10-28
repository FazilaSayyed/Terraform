provider "aws" {
  access_key = ""
  secret_key = ""
}


resource "aws_iam_user" "iamuserjahagirdar" {
  name = "jahagirdar"
  path = "/"

  tags = {
    name = "jahagirdar"
  }
}
