variable "myrgname" {
  description = "this variable is for resource group name"
  type        = string
  default     = "myfirstrg"
}

variable "myrglocation" {
  description = "this variable is for resource group name"
  type        = string
  default     = "eastus"
}

variable "subscriptionID" {}
variable "clientID" {}
variable "clientSecret" {}
variable "tenantID" {}

variable "myvnet" {}

variable "mysubnet" {
  type = map(any)
}
