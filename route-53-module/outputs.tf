output "name" {
  description = "The name of the record"
  value       = aws_route53_record.ui.name
}

output "zone_id" {
  description = "The ID of the hosted zone to contain this record"
  value       = aws_route53_record.ui.zone_id
}

output "type" {
  description = "The record type"
  value       = aws_route53_record.ui.type
}
