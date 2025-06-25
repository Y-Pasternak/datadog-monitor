# datadog-monitor
Provision Datadog monitor with Terraform

## Features

- Creates a metric alert monitor for `system.cpu.user`
- Parameterized threshold, tags, and message
- Uses Datadog Terraform provider

## Usage

### 1. Configure API Keys

Create a `terraform.tfvars` file or export environment variables:

export TF_VAR_datadog_api_key="YOUR_DATADOG_API_KEY"
export TF_VAR_datadog_app_key="YOUR_DATADOG_APP_KEY"

### 2. Run Terraform

terraform init
terraform apply

### 3. Example Variables

monitor_name    = "High CPU Alert"
alert_message   = "High CPU detected on host: {{host.name}}"
cpu_threshold   = 85
monitor_tags    = "env:production,team:devops"
