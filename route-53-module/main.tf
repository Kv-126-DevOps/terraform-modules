resource "aws_route53_record" "ui" {
  create = var.create
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  alias {
    name                   = var.alb_dns_name
    zone_id                = var.hosted_zone
    evaluate_target_health = var.evaluate_target_health
  }
}
