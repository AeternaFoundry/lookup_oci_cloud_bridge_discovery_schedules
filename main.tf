data "oci_cloud_bridge_discovery_schedules" "cloud_bridge_discovery_schedules_lookup" {
  for_each = var.cloud_bridge_discovery_schedules_lookup

  compartment_id        = each.value.compartment_id
  discovery_schedule_id = each.value.discovery_schedule_id
  display_name          = each.value.display_name
  state                 = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

