########### Resourse Example ###############
resource "aws_ec2_instance" "example" {
  ami                         = var.ami
  instance_type               = var.instance_type
  availability_zone           = var.availability_zone
  vpc_id                      = var.vpc_id
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  key_name                    = var.key_name
  monitoring                  = var.monitoring
  associate_public_ip_address = var.associate_public_ip_address
  private_ip                  = var.private_ip
  secondary_private_ips       = var.secondary_private_ips
  ebs_optimized               = var.ebs_optimized
  tags                        = merge({ "Name" = var.name }, var.tags)

  timeouts {
    create = lookup(var.timeouts, "Create", null)
    update = lookup(var.timeouts, "Update", null)
    delete = lookup(var.timeouts, "Delete", null)
  }
}
