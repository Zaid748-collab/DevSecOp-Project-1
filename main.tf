provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettoday987654321" {
  bucket = "terraformbuckettoday987654321"
}
resource "aws_s3_bucket" "terraformbuckettoday9876543211" {
  bucket = "terraformbuckettoday9876543211"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettoday987654321"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
