provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

resource "datadog_monitor" "cpu_high" {
  name               = var.monitor_name
  type               = "metric alert"
  message            = var.alert_message
  escalation_message = "Please take immediate action."

  query = "avg(last_5m):avg:system.cpu.user{${var.monitor_tags}} by {host} > ${var.cpu_threshold}"

  tags = split(",", var.monitor_tags)
  priority = 1

  thresholds {
    critical = var.cpu_threshold
  }

  notify_no_data    = true
  renotify_interval = 10
}
