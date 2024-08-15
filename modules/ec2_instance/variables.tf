// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "ami" {
  type        = string
  description = "AMI to use for the instance."
}

variable "instance_type" {
  type        = string
  description = "Instance type to use for the instance."
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID to launch in."
}

variable "security_groups" {
  type        = list(string)
  description = " List of security group names to associate with."
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to assign to the resource."
}

variable "fsx_dns_name" {
  type        = string
  description = "Fsx server DNS name to mount on ec2 instance."
}

variable "fsx_mount_name" {
  type        = string
  description = "Fsx servermount name to mount filesystem on ec2 instance."
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM Instance Profile to launch the instance with."
  default     = null
}

variable "monitoring" {
  type        = bool
  default     = true
  description = "If true, the launched EC2 instance will have detailed monitoring enabled."
}

variable "ebs_optimized" {
  type        = bool
  default     = true
  description = "If true, the launched EC2 instance will be EBS-optimized."
}

variable "encrypted" {
  type        = bool
  default     = true
  description = "Whether to enable volume encryption."
}

variable "http_endpoint" {
  type        = string
  default     = "enabled"
  description = "Whether the metadata service is available. Valid values include enabled or disabled. Defaults to enabled"
}