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

variable "ipv6_cidr_block" {
  type        = string
  description = "IPv6 CIDR block for the subnet"
  default     = null
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Whether to map public IPs on launch"
  default     = false
}

variable "assign_ipv6_address_on_creation" {
  type        = bool
  description = "Assign an IPv6 address to network interfaces created in the subnet"
  default     = false
}

variable "enable_dns64" {
  type        = bool
  description = "Enable DNS64 for the subnet"
  default     = false
}

variable "enable_resource_name_dns_a_record_on_launch" {
  type        = bool
  description = "Enable resource-name DNS A records for instances launched in the subnet"
  default     = false
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the subnet"
  default     = {}
}

# ====================================
# Sigmoid Tags Configuration
# ====================================

variable "sigmoid_environment" {
  description = "Sigmoid environment identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_project" {
  description = "Sigmoid project identifier for cost allocation"
  type        = string
  default     = ""
}

variable "sigmoid_team" {
  description = "Sigmoid team identifier for cost allocation"
  type        = string
  default     = ""
}
