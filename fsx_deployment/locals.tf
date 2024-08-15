// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

locals {

  per_unit_storage_throughput = var.deployment_type == "PERSISTENT_1" ? 100 : 125
  resource_name               = "fsx_lustre"
  local_tags = {
    Name = "fsx-lustre-test"
  }

  fsx_inress = [
    {
      from_port        = "988"
      to_port          = "988"
      protocol         = "tcp"
      cidr_blocks      = ["<Enter_your_cidr_range>"]
      description      = "Allow access from FSX subnet"
      ipv6_cidr_blocks = []
      self             = false
    },
    {
      from_port        = "1018"
      to_port          = "1023"
      protocol         = "tcp"
      cidr_blocks      = ["<Enter_your_cidr_range>"]
      description      = "Allow access from FSX subnet"
      ipv6_cidr_blocks = []
      self             = false
    }
  ]

  fsx_egress = [
    {
      from_port        = "0"
      to_port          = "0"
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Allow access from FSX subnet"
      ipv6_cidr_blocks = []
      self             = false
    }
  ]
}