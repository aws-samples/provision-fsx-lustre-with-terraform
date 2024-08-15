// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "log_group_name" {
  type        = string
  description = "value"
}

variable "retention_in_days" {
  type        = number
  default     = 3653
  description = "value"
}

variable "kms_key_id" {
  type        = string
  default     = null
  description = "value"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the data repository association"
}