
#Reference Provider parameters to var.tf: region, access_key and secret_key
provider "aws" {
    region = var.region
    access_key = var.access_key
    secret_key = var.secret_key
}