variable region {
  type        = string
  default     = "sa-east-1"
  description = "AWS region"
}

variable app_name {
  type        = string
  description = "App Name"
}


variable vpc_id {
  type        = string
  description = "VPC ID"
}

variable subnet_id {
  type        = string
  description = "Subnet ID"
}

variable ssh_access_cidrs {
  type        = list(string)
  description = "CIDRs for SSH access to EC2 instance"
}

variable ec2_size {
  type        = string
  default     = "t3.nano"
  description = "EC2 instance size"
}

variable ec2_keypair {
  type        = string
  default     = "deploy"
  description = "EC2 keypair name"
}

variable r53_domain {
  type        = string
  description = "Route 53 zone domain"
}
