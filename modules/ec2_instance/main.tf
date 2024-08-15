// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_instance" "this" {

  ami                  = var.ami
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  security_groups      = var.security_groups
  iam_instance_profile = var.iam_instance_profile
  user_data            = local.user_data
  ebs_optimized        = var.ebs_optimized
  monitoring           = var.monitoring
  root_block_device {
    encrypted = var.encrypted
  }
  metadata_options {
    http_endpoint = var.http_endpoint
    http_tokens   = "required"
    http_put_response_hop_limit = 2
  }
  tags = var.tags

}