// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

module "ec2" {
  source               = "../modules/ec2_instance"
  
  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  security_groups      = [module.fsx_security_groups.id]
  fsx_dns_name         = module.fsx_lustre.dns_name
  fsx_mount_name       = module.fsx_lustre.mount_name
  iam_instance_profile = var.iam_instance_profile
  tags                 = local.local_tags
  depends_on           = [module.fsx_lustre, module.fsx_dra]

}

module "fsx_security_groups" {
  source      = "../modules/security_group"

  description = var.sg_description
  vpc_id      = var.vpc_id
  egress      = local.fsx_egress
  ingress     = local.fsx_inress
  tags        = local.local_tags
}

module "fsx_lustre" {
  source = "../modules/fsx-lustre-file-system"

  storage_capacity              = var.storage_capacity
  subnet_ids                    = [var.subnet_id]
  security_group_ids            = [module.fsx_security_groups.id]
  weekly_maintenance_start_time = var.weekly_maintenance_start_time
  deployment_type               = var.deployment_type
  kms_key_id                    = var.kms_key_id
  per_unit_storage_throughput   = local.per_unit_storage_throughput
  storage_type                  = var.storage_type
  copy_tags_to_backups          = var.copy_tags_to_backups
  data_compression_type         = var.data_compression_type
  file_system_type_version      = var.file_system_type_version
  logs_destination              = module.fsx_cloudwatch_logs.arn
  tags                          = local.local_tags
}

module "fsx_dra" {
  source = "../modules/fsx-data-association"

  file_system_id       = module.fsx_lustre.id
  data_repository_path = var.data_repository_path
  file_system_path     = var.file_system_path
  dra_export_policy    = var.dra_export_policy
  dra_import_policy    = var.dra_import_policy
  tags                 = local.local_tags
  depends_on           = [module.fsx_lustre]
}

module "fsx_cloudwatch_logs" {
  source = "../modules/cloudwatch_logs_group"

  log_group_name    = format("%s%s", "/aws/fsx/", local.resource_name)
  kms_key_id        = var.kms_key_id
  tags              = local.local_tags
  retention_in_days = var.retention_in_days

}