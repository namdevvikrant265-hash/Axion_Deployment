variable "subscription_id" {
  description = "Azure subscription ID used for the Terraform state resources."
  type        = string
}

variable "location" {
  description = "Azure region for the state resource group."
  type        = string
}

variable "state_resource_group_name" {
  description = "Resource group holding the remote Terraform state storage account."
  type        = string
  default     = "axn-preprod-ci-state-rg"
}

variable "pipeline_principal_object_id" {
  description = "Optional object ID of the Azure DevOps service connection principal; grant it state blob access."
  type        = string
  default     = null
}

variable "bootstrap_principal_object_id" {
  description = "Object ID of the identity running the initial state bootstrap; it needs blob access to create the state container."
  type        = string
}

variable "tags" {
  description = "Tags applied to the Terraform state resources."
  type        = map(string)
  default = {
    project    = "axion-telemetry"
    managed_by = "terraform"
    purpose    = "terraform-state"
  }
}