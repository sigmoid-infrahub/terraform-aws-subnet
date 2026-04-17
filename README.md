# Module: Subnet

This module creates an AWS Subnet within a specified VPC and Availability Zone.

## Features
- Subnet creation in a VPC
- CIDR block validation
- Availability Zone selection
- Public IP on launch configuration
- Tagging support

## Usage
```hcl
module "subnet" {
  source = "../../terraform-modules/terraform-aws-subnet"

  vpc_id            = "vpc-12345678"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}
```

## Inputs
| Name | Type | Default | Description |
|------|------|---------|-------------|
| `vpc_id` | `string` | n/a | VPC ID for the subnet |
| `cidr_block` | `string` | n/a | CIDR block for the subnet |
| `availability_zone` | `string` | n/a | Availability zone for the subnet |
| `map_public_ip_on_launch` | `bool` | `false` | Whether to map public IPs on launch |
| `tags` | `map(string)` | `{}` | Tags to apply to the subnet |

## Outputs
| Name | Description |
|------|-------------|
| `subnet_id` | Subnet ID |
| `subnet_cidr` | Subnet CIDR block |
| `module` | Full module outputs |

## Environment Variables
None

## Notes
- Ensure the `cidr_block` is a valid CIDR and falls within the VPC CIDR range.
- `availability_zone` should be a valid AZ in your current region.
