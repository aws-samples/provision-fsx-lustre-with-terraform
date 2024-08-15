// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

locals {
  user_data = templatefile("${path.module}/template/user_data.sh.tmpl", {
    FSX_DNS_NAME   = var.fsx_dns_name
    FSX_MOUNT_NAME = var.fsx_mount_name
  })
}