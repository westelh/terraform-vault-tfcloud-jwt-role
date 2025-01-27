variable "backend" {
  description = "Jwt backend for the role"
  type = string
}

variable "name" {
  description = "The role name"
  type = string
}

variable "policies" {
  description = "Policies to attach to the token"
  type = list(string)
}

variable "organization" {
  description = "Which organization the workspace belongs to"
  type = string
}

variable "project" {
  description = "Which project the workspace belongs to"
  type = string
}

variable "workspace" {
  description = "Workspace name"
  type = string
}

variable "ttl" {
  description = "Tolen TTL in seconds"
  type = number
}

