provider "aws"{
   region = "ap-northeast-2"
   access_key = "${local.access}"
   secret_key = "${local.secret}"
#   alias= "seoul"
}

provider "aws"{
  alias = "Tokyo"
  region = "ap-northeast-1"
}

terraform {
  required_providers {
    aws = ">=2.7.0"
  }
}
