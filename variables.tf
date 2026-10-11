variable "cloud_bridge_discovery_schedules_lookup" {
  description = <<EOT
Map of cloud_bridge_discovery_schedules_lookup, attributes below
Required:
    - compartment_id
Optional:
    - discovery_schedule_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = string
    discovery_schedule_id = optional(string)
    display_name          = optional(string)
    state                 = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

