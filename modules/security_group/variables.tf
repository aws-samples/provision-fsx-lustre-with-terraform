// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "description" {
  type        = string
  description = "Security group description."
  default     = null
}

variable "name" {
  type        = string
  description = " Name of the security group. If omitted, Terraform will assign a random, unique name."
  default     = null
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "vpc_id" {
  type        = string
  default     = null
  description = "VPC ID. Defaults to the region's default VPC."
}

variable "revoke_rules_on_delete" {
  type        = bool
  default     = false
  description = "Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself."
}

variable "egress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = any
    cidr_blocks      = list(string)
    description      = string
    ipv6_cidr_blocks = list(string)
    self             = bool
  }))
  default     = []
  description = "Configuration block for egress rules. "
}

variable "ingress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = any
    cidr_blocks      = list(string)
    description      = string
    ipv6_cidr_blocks = list(string)
    self             = bool
  }))
  default     = []
  description = "Configuration block for ingress rules."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the data repository association"
}