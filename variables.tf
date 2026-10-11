variable "serverless_instances_lookup" {
  description = <<EOT
Map of serverless_instances_lookup, attributes below
Required:
    - project_id
EOT

  type = map(object({
    project_id = string
  }))
}

