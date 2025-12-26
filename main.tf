# resource "aws_s3_bucket" "scp_bucket" {
#   bucket = "scp-gaurav2327-test"
# }

//using module
module "s3_bucket" {
  source = "./module"
  bucket = "scp-gaurav2327-test"
}