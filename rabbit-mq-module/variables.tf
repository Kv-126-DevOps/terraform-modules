variable "broker_name" {
  description = "Name to be used on broker created"
  type        = string
  default     = "rabbit-mq-broker"
}

variable "engine_type" {
  description = "Type of broker engine, it can be ActiveMQ too"
  type        = string
  default     = "RabbitMQ"
}

variable "engine_version" {
  description = "Version of the broker engine"
  type        = string
  default     = "3.9.16"
}

variable "host_instance_type" {
  description = "Broker's instance type"
  type        = string
  default     = "mq.t3.micro"
}

variable "security_groups" {
  description = "List of security group IDs assigned to the broker"
  type        = list(string)
  default     = null
}

variable "subnet_ids" {
  description = "List of subnet IDs in which to launch the broker"
  type        = list(string)
  default     = null
}

variable "username" {
  type        = string
  description = "(optional) username"
}

variable "password" {
  type        = string
  sensitive   = true
  description = "(optional) password"
}

variable "tags" {
  description = "Mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
