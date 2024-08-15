// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_data_repository_association.this.arn
}

output "id" {
  description = "Identifier of the data repository association, e.g., dra-12345678"
  value       = aws_fsx_data_repository_association.this.id
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider "
  value       = aws_fsx_data_repository_association.this.tags_all
}