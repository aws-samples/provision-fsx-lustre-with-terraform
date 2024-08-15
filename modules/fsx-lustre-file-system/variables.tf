// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "security_group_ids" {
  type        = list(string)
  description = "A list of IDs for the security groups that apply to the specified network interfaces created for file system access."
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet."
}

variable "storage_capacity" {
  type        = number
  description = "The storage capacity (GiB) of the file system. Minimum of 1200."
  default     = 1200
}

variable "backup_id" {
  type        = string
  description = "The ID of the source backup to create the filesystem from."
  default     = null
}

variable "weekly_maintenance_start_time" {
  type        = string
  description = "The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  default     = null
}

variable "deployment_type" {
  type        = string
  description = "The filesystem deployment type. One of: PERSISTENT_1, PERSISTENT_2."
  default     = null
}

variable "kms_key_id" {
  type        = string
  description = "ARN for the KMS Key to encrypt the file system at rest,"
  default     = null
}

variable "per_unit_storage_throughput" {
  type        = number
  description = "Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, "
  default     = null
}

variable "automatic_backup_retention_days" {
  type        = number
  default     = null
  description = "The number of days to retain automatic backups. Setting this to 0 disables automatic backups."
}

variable "storage_type" {
  type        = string
  default     = null
  description = "The filesystem storage type. Either SSD or HDD, defaults to SSD. "
}

variable "drive_cache_type" {
  type        = string
  default     = null
  description = "The type of drive cache used by PERSISTENT_1 filesystems that are provisioned with HDD storage_type."
}

variable "daily_automatic_backup_start_time" {
  type        = string
  description = "A recurring daily time, in the format HH:MM."
  default     = null
}

variable "copy_tags_to_backups" {
  type        = bool
  default     = false
  description = "A boolean flag indicating whether tags for the file system should be copied to backups."
}

variable "data_compression_type" {
  type        = string
  default     = null
  description = "Sets the data compression configuration for the file system. Valid values are LZ4 and NONE. "
}

variable "file_system_type_version" {
  type        = number
  default     = null
  description = "Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for SCRATCH_1, SCRATCH_2 and PERSISTENT_1 deployment types. Valid values for 2.12 include all deployment types."
}

variable "logs_destination" {
  type        = string
  default     = null
  description = "The Amazon Resource Name (ARN) that specifies the destination of the logs. The name of the Amazon CloudWatch Logs log group must begin with the /aws/fsx prefix."
}

variable "log_level" {
  type = string
  default = "WARN_ERROR"
  description = "Error level for logs"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the data repository association"
}