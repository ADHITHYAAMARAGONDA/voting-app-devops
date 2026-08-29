terraform {
  backend "s3" {
    bucket         = "voting-app-tfstate-841162701696"
    key            = "voting-app/dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "voting-app-terraform-locks"
    encrypt        = true
    profile        = "voting-app"
  }
}