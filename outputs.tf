output "state_resource_group_name" {
  description = "Resource group containing the Terraform state storage account."
  value       = azurerm_resource_group.state.name
}

output "state_storage_account_name" {
  description = "Storage account name for the azurerm Terraform backend."
  value       = azurerm_storage_account.state.name
}

output "state_container_name" {
  description = "Private container name for Terraform state."
  value       = azurerm_storage_container.state.name
}