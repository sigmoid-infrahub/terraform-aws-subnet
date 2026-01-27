variable "vpc_id" {
  type        = string
  description = "VPC ID for the subnet"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block for the subnet"

  validation {
    condition     = can(cidrnetmask(var.cidr_block))
    error_message = "cidr_block must be a valid CIDR (e.g. 10.0.1.0/24)."
  }
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the subnet"
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Whether to map public IPs on launch"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the subnet"
  default     = {}
}
