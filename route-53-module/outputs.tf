output "name" {
  description = "The name of the record"
  value       = try(aws_route53_record.ui[0].name, "")
}

output "zone_id" {
  description = "The ID of the hosted zone to contain this record"
  value       = try(aws_route53_record.ui[0].zone_id, "")
}

output "type" {
  description = "The record type"
  value       = try(aws_route53_record.ui[0].type, "")
}
