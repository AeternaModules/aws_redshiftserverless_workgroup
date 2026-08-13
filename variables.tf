variable "redshiftserverless_workgroups" {
  description = <<EOT
Map of redshiftserverless_workgroups, attributes below
Required:
    - namespace_name
    - workgroup_name
Optional:
    - base_capacity
    - enhanced_vpc_routing
    - max_capacity
    - port
    - publicly_accessible
    - region
    - security_group_ids
    - subnet_ids
    - tags
    - tags_all
    - track_name
    - config_parameter (block):
        - parameter_key (required)
        - parameter_value (required)
    - price_performance_target (block):
        - enabled (required)
        - level (optional)
EOT

  type = map(object({
    namespace_name       = string
    workgroup_name       = string
    base_capacity        = optional(number)
    enhanced_vpc_routing = optional(bool)
    max_capacity         = optional(number)
    port                 = optional(number)
    publicly_accessible  = optional(bool)
    region               = optional(string)
    security_group_ids   = optional(set(string))
    subnet_ids           = optional(set(string))
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
    track_name           = optional(string)
    config_parameter = optional(list(object({
      parameter_key   = string
      parameter_value = string
    })))
    price_performance_target = optional(object({
      enabled = bool
      level   = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_workgroups : (
        v.config_parameter == null || alltrue([for item in v.config_parameter : (contains(["auto_mv", "datestyle", "enable_case_sensitive_identifier", "enable_user_activity_logging", "query_group", "search_path", "max_query_cpu_time", "max_query_blocks_read", "max_scan_row_count", "max_query_execution_time", "max_query_queue_time", "max_query_cpu_usage_percent", "max_query_temp_blocks_to_disk", "max_join_row_count", "max_nested_loop_join_row_count", "require_ssl", "use_fips_ssl"], item.parameter_key))])
      )
    ])
    error_message = "must be one of: auto_mv, datestyle, enable_case_sensitive_identifier, enable_user_activity_logging, query_group, search_path, max_query_cpu_time, max_query_blocks_read, max_scan_row_count, max_query_execution_time, max_query_queue_time, max_query_cpu_usage_percent, max_query_temp_blocks_to_disk, max_join_row_count, max_nested_loop_join_row_count, require_ssl, use_fips_ssl"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_workgroups : (
        v.price_performance_target == null || (v.price_performance_target.level == null || (contains([1, 25, 50, 75, 100], v.price_performance_target.level)))
      )
    ])
    error_message = "must be one of: 1, 25, 50, 75, 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshiftserverless_workgroups : (
        v.track_name == null || ((length(v.track_name) >= 1 && length(v.track_name) <= 256) && (can(regex("^[a-zA-Z0-9_]+$", v.track_name))))
      )
    ])
    error_message = "all of: must be between 1 and 256 characters; must be alphanumeric or underscore"
  }
}

