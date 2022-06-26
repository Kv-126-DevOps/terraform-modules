resource "aws_mq_broker" "rabbit" {
  //count              = var.create ? 1 : 0
  broker_name        = var.broker_name
  engine_type        = var.engine_type
  engine_version     = var.engine_version
  host_instance_type = var.host_instance_type
  security_groups    = var.security_groups
  subnet_ids         = var.subnet_ids
  user {
    username = var.username
    password = var.password
  }
}
