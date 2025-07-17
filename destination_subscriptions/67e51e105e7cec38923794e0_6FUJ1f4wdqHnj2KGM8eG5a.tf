import {
  to = segment_destination_subscription.id-67e51e105e7cec38923794e0_6FUJ1f4wdqHnj2KGM8eG5a
  id = "67e51e105e7cec38923794e0:6FUJ1f4wdqHnj2KGM8eG5a"
}

resource "segment_destination_subscription" "id-67e51e105e7cec38923794e0_6FUJ1f4wdqHnj2KGM8eG5a" {
  action_id            = "3pnc4QJvUjWGi2bp6EnDt"
  destination_id       = "67e51e105e7cec38923794e0"
  enabled              = true
  model_id             = null
  name                 = "Track Event"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_size = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@if" = {
        else = {
          "@path" = "$.properties.email"
        }
        exists = {
          "@path" = "$.context.traits.email"
        }
        then = {
          "@path" = "$.context.traits.email"
        }
      }
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    name = {
      "@path" = "$.event"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "type = \"track\" and event != \"Order Completed\""
}