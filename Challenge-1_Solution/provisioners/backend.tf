terraform {
 backend “s3” {
 key = path-to-the-key 
 region = var.region
 bucket = var.bucket_name
 dynamodb_table = var.dynamodb_name
 encrypt = true
 }
}
