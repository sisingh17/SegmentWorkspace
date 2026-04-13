import {
  to = segment_destination_subscription.id-67d9431b4d1fdfb4a6988d23_d9PXUzmjYhGuK6qX243G5r
  id = "67d9431b4d1fdfb4a6988d23:d9PXUzmjYhGuK6qX243G5r"
}

resource "segment_destination_subscription" "id-67d9431b4d1fdfb4a6988d23_d9PXUzmjYhGuK6qX243G5r" {
  action_id            = "sW4CKfq2r8LXZhXDfmbQW6"
  destination_id       = "67d9431b4d1fdfb4a6988d23"
  enabled              = true
  model_id             = null
  name                 = "Order Refunded"
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
    personas_audience_key = "order_refunded"
    time = {
      "@path" = "$.timestamp"
    }
  })
  trigger = "type = \"identify\""
}