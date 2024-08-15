// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "vpc_id" {
  type        = string
  description = "VPC ID. Defaults to the region's default VPC."
}

variable "subnet_id" {
  type        = string
  description = "VPC Subnet ID to launch in."
}

variable "data_repository_path" {
  type        = string
  description = "The path to the Amazon S3 data repository that will be linked to the file system"
}

variable "iam_instance_profile" {
  type        = string
  description = "IAM Instance Profile to launch the instance with."
}

variable "deployment_type" {
  type        = string
  description = "The filesystem deployment type. One of: PERSISTENT_1, PERSISTENT_2."
  default     = "PERSISTENT_2"
}

variable "ami" {
  type        = string
  default = "ami-0ba9883b710b05ac6"
  description = "AMI to use for the instance."
}

variable "instance_type" {
  type        = string
  default = "t3.micro"
  description = "Instance type to use for the instance."
}

variable "sg_description" {
  type        = string
  description = "Security group description."
  default     =  "Security Group to allowed to connect FSX Lustre"
}

variable "storage_capacity" {
  type        = number
  description = "The storage capacity (GiB) of the file system. Minimum of 1200."
  default     = 1200
}

variable "weekly_maintenance_start_time" {
  type        = string
  description = "The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  default     = "7:14:00"
}

variable "storage_type" {
  type        = string
  default     = "SSD"
  description = "The filesystem storage type. Either SSD or HDD, defaults to SSD. "
}

variable "copy_tags_to_backups" {
  type        = bool
  default     = true
  description = "A boolean flag indicating whether tags for the file system should be copied to backups."
}

variable "data_compression_type" {
  type        = string
  default     = "LZ4"
  description = "Sets the data compression configuration for the file system. Valid values are LZ4 and NONE. "
}

variable "file_system_type_version" {
  type        = number
  default     = 2.15
  description = "Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for SCRATCH_1, SCRATCH_2 and PERSISTENT_1 deployment types. Valid values for 2.12 include all deployment types."
}

variable "file_system_path" {
  type        = string
  default = "/fsxlink"
  description = "A path on the file system that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with data_repository_path."
}

variable "dra_export_policy" {
  type        = list(string)
  default = ["NEW", "CHANGED"]
  description = "export policy for DRA"
}

variable "dra_import_policy" {
  type        = list(string)
  default = ["NEW", "CHANGED"]
  description = "Import policy for DRA"
}

variable "retention_in_days" {
  type        = number
  default     = 3653
  description = "value"
}

variable "kms_key_id" {
  type        = string
  description = "ARN for the KMS Key to encrypt the file system at rest,"
}