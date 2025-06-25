datadog_api_key = "YOUR_DATADOG_API_KEY"
datadog_app_key = "YOUR_DATADOG_APP_KEY"
monitor_name    = "High CPU Alert"
alert_message   = "High CPU detected on host: {{host.name}}"
cpu_threshold   = 85
monitor_tags    = "env:production,team:devops"
