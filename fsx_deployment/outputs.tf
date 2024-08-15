// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

output "fsx_arn" {
  description = "Amazon Resources Name of the file system"
  value       = module.fsx_lustre.arn
}

output "fsx_dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = module.fsx_lustre.dns_name
}

output "fsx_id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = module.fsx_lustre.id
}

output "fsx_mount_name" {
  description = "The value to be used when mounting the filesystem."
  value       = module.fsx_lustre.mount_name
}