terraform {
  required_version = ">= 0.12, < 0.15"
}

provider "aws" {
  region = "us-east-2"

  # 2.x 버전의 AWS 공급자 허용
  version = "~> 2.0"
}

module "alb" {
  source = "../../modules/networking/alb"

  alb_name   = var.alb_name

  subnet_ids = data.aws_subnet_ids.default.ids
}
