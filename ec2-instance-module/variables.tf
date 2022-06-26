variable "create" {
  description = "Whether to create an instance"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "ec2-instance"
}

variable "ami" {
  description = "ID of AMI to use for instance"
  type        = string
  default     = "ami-09439f09c55136ecf"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}

variable "availability_zone" {
  description = "Availability zone to start instance"
  type        = string
  default     = null
}

variable "ebs_optimized" {
  description = "Using EBS-optimization"
  type        = bool
  default     = null
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
  default     = "t3a.nano"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

variable "monitoring" {
  description = "EC2 instance monitoring"
  type        = bool
  default     = false
}

variable "private_ip" {
  description = "Private IP address to associate with instance in VPC"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "VPC Subnet ID to launch"
  type        = string
  default     = null
}

variable "tags" {
  description = "Mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate"
  type        = list(string)
  default     = null
}

variable "timeouts" {
  description = "Define maximum timeout for creating, updating, and deleting EC2 instance resources"
  type        = map(string)
  default     = {}
}
