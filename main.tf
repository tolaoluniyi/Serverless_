#Amazon Certificate

resource "aws_acm_certificate" "cert" {
  domain_name       = "temiolaoluniyi.com"
  validation_method = "EMAIL"

  validation_option {
    domain_name       = "temiolaoluniyi.com"
    validation_domain = "temiolaoluniyi.com"
  }
}
resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "temiolaoluniyi.com"
  type    = "CNAME"
  ttl     = 300
  records = []
}