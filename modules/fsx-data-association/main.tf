// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_fsx_data_repository_association" "this" {
  file_system_id       = var.file_system_id
  data_repository_path = var.data_repository_path
  file_system_path     = var.file_system_path
  s3 {
    auto_export_policy {
      events = var.dra_export_policy
    }
    auto_import_policy {
      events = var.dra_import_policy
    }
  }
  batch_import_meta_data_on_create = var.batch_import_meta_data_on_create
  imported_file_chunk_size         = var.imported_file_chunk_size
  delete_data_in_filesystem        = var.delete_data_in_filesystem
  tags                             = var.tags
}