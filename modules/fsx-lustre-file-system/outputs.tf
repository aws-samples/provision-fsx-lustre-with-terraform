// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "arn" {
  description = "Amazon Resources Name of the file system"
  value       = aws_fsx_lustre_file_system.this.arn
}

output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = aws_fsx_lustre_file_system.this.dns_name
}

output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_lustre_file_system.this.id
}

output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible. "
  value       = aws_fsx_lustre_file_system.this.network_interface_ids
}

output "owner_id" {
  description = "AWS account identifier that created the file system"
  value       = aws_fsx_lustre_file_system.this.owner_id
}

output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system."
  value       = aws_fsx_lustre_file_system.this.vpc_id
}

output "mount_name" {
  description = "The value to be used when mounting the filesystem."
  value       = aws_fsx_lustre_file_system.this.mount_name
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider"
  value       = aws_fsx_lustre_file_system.this.tags_all
}