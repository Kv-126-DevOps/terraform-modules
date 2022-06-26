variable "create" {
  description = "Whether to create an broker"
  type        = bool
  default     = true
}

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

variable "user" {
  description = "Configuration block for broker users"
  type        = map(any)
  default     = {}
}

variable "username" {
  description = "Username of the user"
  type        = string
  default     = "mquser"
}

variable "password" {
  description = "Password of the user. It must be 12 to 250 characters long, at least 4 unique characters, and must not contain commas"
  type        = string
  default     = null
}

variable "tags" {
  description = "Mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
