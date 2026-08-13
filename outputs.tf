output "redshiftserverless_workgroups_id" {
  description = "Map of id values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshiftserverless_workgroups_arn" {
  description = "Map of arn values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "redshiftserverless_workgroups_base_capacity" {
  description = "Map of base_capacity values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.base_capacity if v.base_capacity != null }
}
output "redshiftserverless_workgroups_config_parameter" {
  description = "Map of config_parameter values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.config_parameter if v.config_parameter != null && length(v.config_parameter) > 0 }
}
output "redshiftserverless_workgroups_endpoint" {
  description = "Map of endpoint values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "redshiftserverless_workgroups_enhanced_vpc_routing" {
  description = "Map of enhanced_vpc_routing values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.enhanced_vpc_routing if v.enhanced_vpc_routing != null }
}
output "redshiftserverless_workgroups_max_capacity" {
  description = "Map of max_capacity values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.max_capacity if v.max_capacity != null }
}
output "redshiftserverless_workgroups_namespace_name" {
  description = "Map of namespace_name values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.namespace_name if v.namespace_name != null && length(v.namespace_name) > 0 }
}
output "redshiftserverless_workgroups_port" {
  description = "Map of port values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.port if v.port != null }
}
output "redshiftserverless_workgroups_price_performance_target" {
  description = "Map of price_performance_target values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.price_performance_target if v.price_performance_target != null && length(v.price_performance_target) > 0 }
}
output "redshiftserverless_workgroups_publicly_accessible" {
  description = "Map of publicly_accessible values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.publicly_accessible if v.publicly_accessible != null }
}
output "redshiftserverless_workgroups_region" {
  description = "Map of region values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshiftserverless_workgroups_security_group_ids" {
  description = "Map of security_group_ids values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "redshiftserverless_workgroups_subnet_ids" {
  description = "Map of subnet_ids values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "redshiftserverless_workgroups_tags" {
  description = "Map of tags values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "redshiftserverless_workgroups_tags_all" {
  description = "Map of tags_all values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "redshiftserverless_workgroups_track_name" {
  description = "Map of track_name values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.track_name if v.track_name != null && length(v.track_name) > 0 }
}
output "redshiftserverless_workgroups_workgroup_id" {
  description = "Map of workgroup_id values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.workgroup_id if v.workgroup_id != null && length(v.workgroup_id) > 0 }
}
output "redshiftserverless_workgroups_workgroup_name" {
  description = "Map of workgroup_name values across all redshiftserverless_workgroups, keyed the same as var.redshiftserverless_workgroups"
  value       = { for k, v in aws_redshiftserverless_workgroup.redshiftserverless_workgroups : k => v.workgroup_name if v.workgroup_name != null && length(v.workgroup_name) > 0 }
}

