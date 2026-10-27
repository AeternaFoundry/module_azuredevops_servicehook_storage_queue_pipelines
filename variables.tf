variable "servicehook_storage_queue_pipelines" {
  description = <<EOT
Map of servicehook_storage_queue_pipelines, attributes below
Required:
    - account_key
    - account_name
    - project_id
    - queue_name
Optional:
    - ttl
    - visi_timeout
    - run_state_changed_event (block):
        - pipeline_id (optional)
        - run_result_filter (optional)
        - run_state_filter (optional)
    - stage_state_changed_event (block):
        - pipeline_id (optional)
        - stage_name (optional)
        - stage_result_filter (optional)
        - stage_state_filter (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    account_key  = string
    account_name = string
    project_id   = string
    queue_name   = string
    ttl          = optional(number)
    visi_timeout = optional(number)
    run_state_changed_event = optional(object({
      pipeline_id       = optional(string)
      run_result_filter = optional(string)
      run_state_filter  = optional(string)
    }))
    stage_state_changed_event = optional(object({
      pipeline_id         = optional(string)
      stage_name          = optional(string)
      stage_result_filter = optional(string)
      stage_state_filter  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.servicehook_storage_queue_pipelines : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.servicehook_storage_queue_pipelines : (
        length(v.account_key) <= 100
      )
    ])
    error_message = "must be at most 100 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

