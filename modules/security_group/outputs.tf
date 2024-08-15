// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "arn" {
  description = " ARN of the security group."
  value       = aws_security_group.this.arn
}

output "id" {
  description = " ID of the security group."
  value       = aws_security_group.this.id
}

output "owner_id" {
  description = "Owner ID."
  value       = aws_security_group.this.owner_id
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider"
  value       = aws_security_group.this.tags_all
}