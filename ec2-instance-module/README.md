### EC2 Instance

```hcl
module "ec2_instance" {
  source                 = "../../source"
  create                 = true
  name                   = "ec2instance"
  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "deploy"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-122345"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```
## Conditional creation

The following combinations are supported to conditionally create resources:

- Disable resource creation:

```hcl
  create = false
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.1 |
| aws | >= 4.7 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.7 |


## Resources

| Name | Type |
|------|------|
| aws_instance.example | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `create` | Whether to create an instance | `bool` | `true` | no |
| `name` | Name to be used on EC2 instance created | `string` | `ec2-instance` | no |
| `ami` | ID of AMI to use for instance | `string` | `ami-09439f09c55136ecf` | no |
| `associate_public_ip_address` | Whether to associate a public IP address with an instance in a VPC | `bool` | `null` | no |
| `availability_zone` | Availability zone to start instance | `string` | `null` | no |
| `ebs_optimized` | Using EBS-optimization | `bool` | `false` | no |
| `instance_type` | Type of instance | `string` | `t3a.nano` | no |
| `key_name` | Key name of the Key Pair to use for the instance | `string` | `deploy.pem` | no |
| `monitoring` | EC2 instance monitoring | `bool` | `false` | no |
| `private_ip` | Private IP address to associate with instance in VPC | `string` | `null` | no |
| `subnet_id` | VPC Subnet ID to launch | `string` | `null` | no |
| `tags` | Mapping of tags to assign to the resource | `map(string)` | `{}` | no |
| `timeouts` | Define maximum timeout for creating, updating, and deleting EC2 instance resources | `map(string)` | `{}` | no |
| `vpc_security_group_ids` | A list of security group IDs to associate with | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| `id` | The ID of the instance |
| `arn` | ARN of instance |
| `private_dns` | Private DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC |
| `public_dns` | Public DNS name assigned to instance. Can only be used inside the Amazon EC2, and only available if you have enabled DNS hostnames for VPC |
| `private_ip` | Private IP address assigned to instance |
| `public_ip` | Public IP address assigned to instance |
| `tags_all` | Map of tags assigned to resources |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
