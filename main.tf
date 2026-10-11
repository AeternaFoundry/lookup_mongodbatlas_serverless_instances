data "mongodbatlas_serverless_instances" "serverless_instances_lookup" {
  for_each = var.serverless_instances_lookup

  project_id = each.value.project_id
}

