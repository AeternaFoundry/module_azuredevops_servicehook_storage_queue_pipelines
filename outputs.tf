output "servicehook_storage_queue_pipelines_id" {
  description = "Map of id values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.id }
}
output "servicehook_storage_queue_pipelines_account_key" {
  description = "Map of account_key values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.account_key }
  sensitive   = true
}
output "servicehook_storage_queue_pipelines_account_name" {
  description = "Map of account_name values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.account_name }
}
output "servicehook_storage_queue_pipelines_project_id" {
  description = "Map of project_id values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.project_id }
}
output "servicehook_storage_queue_pipelines_queue_name" {
  description = "Map of queue_name values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.queue_name }
}
output "servicehook_storage_queue_pipelines_run_state_changed_event" {
  description = "Map of run_state_changed_event values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => one(v.run_state_changed_event) }
}
output "servicehook_storage_queue_pipelines_stage_state_changed_event" {
  description = "Map of stage_state_changed_event values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => one(v.stage_state_changed_event) }
}
output "servicehook_storage_queue_pipelines_ttl" {
  description = "Map of ttl values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.ttl }
}
output "servicehook_storage_queue_pipelines_visi_timeout" {
  description = "Map of visi_timeout values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.visi_timeout }
}

