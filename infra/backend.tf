provider "aws" {
  region = "sa-east-1"
}

terraform {
  backend "s3" {
    bucket = "sebastianmcarreira-devops"
    key    = "terraform/states/ejercicio.tfstate"
    region = "sa-east-1"
  }
}
