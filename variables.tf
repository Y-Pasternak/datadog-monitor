variable "datadog_api_key" {
  description = "Datadog API key"
  type        = string
  sensitive   = true
}

variable "datadog_app_key" {
  description = "Datadog APP key"
  type        = string
  sensitive   = true
}

variable "monitor_name" {
  description = "Name of the Datadog monitor"
  type        = string
  default     = "High CPU Usage Alert"
}

variable "alert_message" {
  description = "Message sent when the alert is triggered"
  type        = string
  default     = "CPU usage is too high on {{host.name}}."
}

variable "cpu_threshold" {
  description = "CPU usage percentage that triggers the alert"
  type        = number
  default     = 80
}

variable "monitor_tags" {
  description = "Comma-separated tags for the monitor"
  type        = string
  default     = "env:dev,team:infra"
}
