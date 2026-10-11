resource "azuredevops_servicehook_storage_queue_pipelines" "servicehook_storage_queue_pipelines" {
  for_each = var.servicehook_storage_queue_pipelines

  account_key  = each.value.account_key
  account_name = each.value.account_name
  project_id   = each.value.project_id
  queue_name   = each.value.queue_name
  ttl          = each.value.ttl
  visi_timeout = each.value.visi_timeout

  dynamic "run_state_changed_event" {
    for_each = each.value.run_state_changed_event != null ? [each.value.run_state_changed_event] : []
    content {
      pipeline_id       = run_state_changed_event.value.pipeline_id
      run_result_filter = run_state_changed_event.value.run_result_filter
      run_state_filter  = run_state_changed_event.value.run_state_filter
    }
  }

  dynamic "stage_state_changed_event" {
    for_each = each.value.stage_state_changed_event != null ? [each.value.stage_state_changed_event] : []
    content {
      pipeline_id         = stage_state_changed_event.value.pipeline_id
      stage_name          = stage_state_changed_event.value.stage_name
      stage_result_filter = stage_state_changed_event.value.stage_result_filter
      stage_state_filter  = stage_state_changed_event.value.stage_state_filter
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

