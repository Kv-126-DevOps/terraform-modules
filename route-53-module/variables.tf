variable "name" {
  description = "The name of the record"
  type        = string
  default     = "ui"
}

variable "type" {
  description = "The record type. Valid values are A, AAAA, CAA, CNAME, DS, MX, NAPTR, NS, PTR, SOA, SPF, SRV and TXT"
  type        = string
  default     = "A"
}

variable "zone_id" {
  description = "The ID of the hosted zone to contain this record"
  type        = string
  default     = "Z0793915QPXVRLWO8FP3"
}

variable "alias" {
  description = "An alias block."
  type        = map(any)
  default     = {}
}

variable "alb_dns_name" {
  description = "ALB DNS name."
  type        = string
  default     = "dualstack.MAIN-LB-1389830226.eu-central-1.elb.amazonaws.com"
}

variable "hosted_zone" {
  description = "ALB Hosted zone"
  type        = string
  default     = "Z215JYRZR1TBD5"
}

variable "evaluate_target_health" {
  description = "Health cheack"
  type        = bool
  default     = true
}

variable "create" {
  description = "Whether to create an record"
  type        = bool
  default     = true
}
