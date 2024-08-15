// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "batch_import_meta_data_on_create" {
  type        = bool
  default     = false
  description = "Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created"
}

variable "data_repository_path" {
  type        = string
  description = "The path to the Amazon S3 data repository that will be linked to the file system"
}

variable "file_system_path" {
  type        = string
  description = "A path on the file system that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with data_repository_path."
}

variable "file_system_id" {
  type        = string
  description = "The ID of the Amazon FSx file system to on which to create a data repository association."
}

variable "imported_file_chunk_size" {
  type        = number
  default     = 1024
  description = "For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk."
}

variable "dra_export_policy" {
  type        = list(string)
  description = "export policy for DRA"
}

variable "dra_import_policy" {
  type        = list(string)
  description = "Import policy for DRA"
}


variable "delete_data_in_filesystem" {
  type        = bool
  default     = false
  description = "Set to true to delete files from the file system upon deleting this data repository association."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the data repository association"
}