data "aws_route53_zone" "primary_route" {
  name = var.domain
}

resource "aws_route53_record" "nginx-env" {
  zone_id = data.aws_route53_zone.primary_route.id
  name    = "nginx.${var.domain}"
  type    = "CNAME"
  ttl     = "300"
  records = [kubernetes_service.nginx.load_balancer_ingress[0].hostname]
}

resource "aws_route53_record" "bucketlist-env" {
  zone_id = data.aws_route53_zone.primary_route.id
  name    = "bucketlist.${var.domain}"
  type    = "CNAME"
  ttl     = "300"
  records = [kubernetes_service.bucketlist.load_balancer_ingress[0].hostname]
}