// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "arn" {
  description = "value"
  value       = aws_cloudwatch_log_group.this.arn
}

output "log_group_name" {
  description = "value"
  value       = aws_cloudwatch_log_group.this.name
}