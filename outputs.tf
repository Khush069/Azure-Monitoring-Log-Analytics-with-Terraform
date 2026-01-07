output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.law.id
}

output "application_insights_instrumentation_key" {
  value     = azurerm_application_insights.appi.instrumentation_key
  sensitive = true
}
