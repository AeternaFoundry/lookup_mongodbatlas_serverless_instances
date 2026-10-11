output "serverless_instances_lookup_id" {
  description = "Map of id values across all serverless_instances_lookup, keyed the same as var.serverless_instances_lookup except keys with no id are omitted"
  value       = { for k, v in data.mongodbatlas_serverless_instances.serverless_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serverless_instances_lookup_project_id" {
  description = "Map of project_id values across all serverless_instances_lookup, keyed the same as var.serverless_instances_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_serverless_instances.serverless_instances_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serverless_instances_lookup_results" {
  description = "Map of results values across all serverless_instances_lookup, keyed the same as var.serverless_instances_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_serverless_instances.serverless_instances_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}

