import {
  to = segment_destination_subscription.id-67e51e105e7cec38923794e0_qzwMRMrV1V65jQEPzQzjAb
  id = "67e51e105e7cec38923794e0:qzwMRMrV1V65jQEPzQzjAb"
}

resource "segment_destination_subscription" "id-67e51e105e7cec38923794e0_qzwMRMrV1V65jQEPzQzjAb" {
  action_id            = "vE7Gf9yobj2gTuMBhwmg7g"
  destination_id       = "67e51e105e7cec38923794e0"
  enabled              = true
  model_id             = null
  name                 = "Order Completed Calls"
  reverse_etl_schedule = null
  settings = jsonencode({
    _update_existing_only = false
    batch_size            = 75
    braze_id = {
      "@path" = "$.properties.braze_id"
    }
    email = {
      "@path" = "$.traits.email"
    }
    enable_batching = true
    external_id = {
      "@path" = "$.userId"
    }
    products = {
      "@path" = "$.properties.products"
    }
    properties = {
      "@path" = "$.properties"
    }
    time = {
      "@path" = "$.receivedAt"
    }
  })
  trigger = "event = \"Order Completed\""
}