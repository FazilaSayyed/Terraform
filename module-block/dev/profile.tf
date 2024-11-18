provider "aws" {
        region = "us-west-1"
        profile = "configs"
        default_tags {
            tags = {
              name = "aws"
            }

        }
}
