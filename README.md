# Azure Monitoring & Log Analytics with Terraform

## Project Overview
This project demonstrates centralized monitoring on Azure using Terraform. It provisions the following resources:

- **Azure Resource Group**  
- **Log Analytics Workspace** (centralized logging)  
- **Application Insights** (linked to Log Analytics for app monitoring)  
- **Azure Monitor Action Group** (for alerts)  
- **Metric Alert** (heartbeat failure)

All resources are defined as **infrastructure as code (IaC)** for reproducible, auditable deployments.

## Tech Stack
- Terraform v1.5+  
- Azure Resource Manager (azurerm)  
- Log Analytics Workspace  
- Application Insights  
- Azure Monitor / Action Groups

## Folder Structure
azure-monitoring-terraform/
│
├── providers.tf # Terraform provider configuration
├── variables.tf # Input variables
├── main.tf # Azure resources
├── outputs.tf # Outputs of resources
├── terraform.tfvars # Environment-specific values
└── README.md # This file

## Setup Instructions

1️⃣ **Clone the repository**

bash
git clone https://github.com/<your-username>/azure-monitoring-terraform.git
cd azure-monitoring-terraform

2️⃣ Update terraform.tfvars with your environment

hcl
Copy code
resource_group_name = "rg-monitoring-demo"
log_analytics_name  = "law-monitoring-demo"
app_insights_name   = "appi-monitoring-demo"
alert_email         = "your-email@gmail.com"

3️⃣ Initialize Terraform

bash
Copy code
terraform init

4️⃣ Validate configuration

bash
Copy code
terraform validate

5️⃣ Preview plan

bash
Copy code
terraform plan

6️⃣ Apply Terraform to create resources

## bash
Copy code
terraform apply
Type yes when prompted.

## Capture Outputs
After applying, capture Terraform outputs for validation or LinkedIn demo:
terraform output -json > tf_outputs.json

## Key Learnings / Takeaways
Built Azure monitoring infrastructure using Terraform IaC
Learned variable management and modular best practices
Implemented alerts and monitoring workflows
Captured outputs programmatically for validation and demonstration

bash
Copy code
terraform output -json > tf_outputs.json

## Future Enhancements

The project is fully functional as a centralized Azure monitoring solution, but it can be extended further for production-ready environments:

1. **Multiple Action Group Channels**
   - Add **SMS, webhook, or Teams/Slack notifications** along with email for multi-channel alerting.
   
2. **Multiple Environment Support**
   - Create separate **Terraform workspaces** for dev, test, and production.
   - Parameterize alerts and resource names per environment.
   
3. **Custom Log-Based Alerts**
   - Implement **KQL queries** in Log Analytics to trigger alerts on application-specific logs.
   
4. **Automated Dashboards**
   - Build **Azure Monitor dashboards** to visualize logs, alerts, and application performance.
   
5. **Integration with CI/CD**
   - Automate Terraform deployment using **GitHub Actions** or **Azure DevOps** pipelines.
   
6. **VM/AKS/Function Monitoring**
   - Extend monitoring to **Azure VMs, AKS clusters, or Azure Functions**, sending heartbeat and telemetry to Log Analytics.
   
7. **Cost & Performance Optimization**
   - Enable **diagnostic settings** and **retention policies** to optimize costs and log storage.


