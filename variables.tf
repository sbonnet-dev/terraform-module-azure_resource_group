variable "name" {
  type        = string
  description = "Resource group name"
}

variable "rg_type" {
  type        = string
  description = "Specify the prefix name of the resource group"
  default     = "rg-com"

  validation {
    condition = contains([
      "rg-com",
      "rg-net",
      "rg-sec",
    ], var.rg_type)
    error_message = "environment invalid. Valid value for environment are (dev,test,integration,sandbox,non-prod,pre-prod,prod)"
  }
}

variable "environment" {
  type        = string
  description = "Specify the type of environement"
  default     = "dev"

  validation {
    condition = contains([
      "dev",
      "prod",
    ], var.environment)
    error_message = "environment invalid. Valid value for environment are (dev,test,integration,sandbox,non-prod,pre-prod,prod)"
  }
}

variable "location" {
  type        = string
  default     = "francecentral"
  description = "location for this ressource group. Possible location are francecentral or westeurope"

  validation {
    condition = contains([
      "francecentral",
      "westeurope",
      "northeurope",
      "unitedstates",
      "canadaeast"
    ], var.location)
    error_message = "location invalid. Valid value for location are (francecentral,westeurope,northeurope)"
  }
}