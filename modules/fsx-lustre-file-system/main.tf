// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_fsx_lustre_file_system" "this" {

  storage_capacity                  = var.storage_capacity
  subnet_ids                        = var.subnet_ids
  backup_id                         = var.backup_id
  security_group_ids                = var.security_group_ids
  weekly_maintenance_start_time     = var.weekly_maintenance_start_time
  deployment_type                   = var.deployment_type
  kms_key_id                        = var.kms_key_id
  per_unit_storage_throughput       = var.per_unit_storage_throughput
  automatic_backup_retention_days   = var.automatic_backup_retention_days
  storage_type                      = var.storage_type
  drive_cache_type                  = var.drive_cache_type
  daily_automatic_backup_start_time = var.daily_automatic_backup_start_time
  copy_tags_to_backups              = var.copy_tags_to_backups
  data_compression_type             = var.data_compression_type
  file_system_type_version          = var.file_system_type_version
  log_configuration {
    destination = var.logs_destination
    level       = var.log_level
  }
  tags = var.tags

}