import {
  to = segment_destination_subscription.id-67d9431b4d1fdfb4a6988d23_6tbBF65DNHn7ySAeoeP6XY
  id = "67d9431b4d1fdfb4a6988d23:6tbBF65DNHn7ySAeoeP6XY"
}

resource "segment_destination_subscription" "id-67d9431b4d1fdfb4a6988d23_6tbBF65DNHn7ySAeoeP6XY" {
  action_id            = "sW4CKfq2r8LXZhXDfmbQW6"
  destination_id       = "67d9431b4d1fdfb4a6988d23"
  enabled              = false
  model_id             = null
  name                 = "Sync Audience"
  reverse_etl_schedule = null
  settings = jsonencode({
    cohort_id = {
      "@path" = "$.context.personas.computation_id"
    }
    cohort_name = {
      "@path" = "$.context.personas.computation_key"
    }
    enable_batching = true
    event_properties = {
      "@if" = {
        else = {
          "@path" = "$.traits"
        }
        exists = {
          "@path" = "$.properties"
        }
        then = {
          "@path" = "$.properties"
        }
      }
    }
    external_id = {
      "@path" = "$.userId"
    }
    time = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "event = \"Audience Entered\" or event = \"Audience Exited\""
}