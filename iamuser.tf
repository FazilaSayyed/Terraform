resource "aws_iam_user" "iamuserfazi" {
name = "fazi"
path = "/"

tags = {
  name = "fazi"
  }
}