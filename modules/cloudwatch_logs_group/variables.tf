// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "log_group_name" {
  type        = string
  description = "The name of the log group. If omitted, Terraform will assign a random, unique name."
}

variable "retention_in_days" {
  type        = number
  default     = 3653
  description = "Specifies the number of days you want to retain log events in the specified log group. "
}

variable "kms_key_id" {
  type        = string
  default     = null
  description = "The ARN of the KMS Key to use when encrypting log data."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the data repository association"
}