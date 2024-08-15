// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

resource "aws_security_group" "this" {
  description            = var.description
  name                   = var.name
  revoke_rules_on_delete = var.revoke_rules_on_delete
  vpc_id                 = var.vpc_id

  dynamic "egress" {
    for_each = var.egress
    content {
      from_port        = lookup(egress.value, "from_port", null)
      to_port          = lookup(egress.value, "to_port", null)
      protocol         = lookup(egress.value, "protocol", null)
      description      = lookup(egress.value, "description", null)
      cidr_blocks      = lookup(egress.value, "cidr_blocks", [])
      ipv6_cidr_blocks = lookup(egress.value, "ipv6_cidr_blocks", [])
      security_groups  = lookup(egress.value, "security_groups", [])
      self             = lookup(egress.value, "self", false)
    }
  }

  dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port        = lookup(ingress.value, "from_port", null)
      to_port          = lookup(ingress.value, "to_port", null)
      protocol         = lookup(ingress.value, "protocol", null)
      description      = lookup(ingress.value, "description", null)
      cidr_blocks      = lookup(ingress.value, "cidr_blocks", [])
      ipv6_cidr_blocks = lookup(ingress.value, "ipv6_cidr_blocks", [])
      security_groups  = lookup(ingress.value, "security_groups", [])
      self             = lookup(ingress.value, "self", false)
    }
  }

  tags = var.tags
}