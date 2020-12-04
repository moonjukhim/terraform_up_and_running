terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

resource "aws_iam_user" "example" {

  name = var.user_name

}
