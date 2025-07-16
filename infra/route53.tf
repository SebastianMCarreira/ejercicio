data "aws_route53_zone" "hosted_zone" {
  name         = var.r53_domain
  private_zone = false
}

resource "aws_route53_record" "record" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = "${var.app_name}.${var.r53_domain}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.ejercicio.public_ip]
}
