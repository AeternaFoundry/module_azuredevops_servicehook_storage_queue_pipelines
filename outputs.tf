output "servicehook_storage_queue_pipelines_id" {
  description = "Map of id values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no id are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servicehook_storage_queue_pipelines_account_key" {
  description = "Map of account_key values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no account_key are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.account_key if v.account_key != null && length(v.account_key) > 0 }
  sensitive   = true
}
output "servicehook_storage_queue_pipelines_account_name" {
  description = "Map of account_name values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no account_name are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "servicehook_storage_queue_pipelines_project_id" {
  description = "Map of project_id values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "servicehook_storage_queue_pipelines_queue_name" {
  description = "Map of queue_name values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no queue_name are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.queue_name if v.queue_name != null && length(v.queue_name) > 0 }
}
output "servicehook_storage_queue_pipelines_run_state_changed_event" {
  description = "Map of run_state_changed_event values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no run_state_changed_event are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => one(v.run_state_changed_event) if v.run_state_changed_event != null && length(v.run_state_changed_event) > 0 }
}
output "servicehook_storage_queue_pipelines_stage_state_changed_event" {
  description = "Map of stage_state_changed_event values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no stage_state_changed_event are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => one(v.stage_state_changed_event) if v.stage_state_changed_event != null && length(v.stage_state_changed_event) > 0 }
}
output "servicehook_storage_queue_pipelines_ttl" {
  description = "Map of ttl values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no ttl are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.ttl if v.ttl != null }
}
output "servicehook_storage_queue_pipelines_visi_timeout" {
  description = "Map of visi_timeout values across all servicehook_storage_queue_pipelines, keyed the same as var.servicehook_storage_queue_pipelines except keys with no visi_timeout are omitted"
  value       = { for k, v in azuredevops_servicehook_storage_queue_pipelines.servicehook_storage_queue_pipelines : k => v.visi_timeout if v.visi_timeout != null }
}

