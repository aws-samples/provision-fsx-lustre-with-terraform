// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "arn" {
  description = "ARN of the instance."
  value       = aws_instance.this.arn
}

output "id" {
  description = "ID of the instance."
  value       = aws_instance.this.id
}
