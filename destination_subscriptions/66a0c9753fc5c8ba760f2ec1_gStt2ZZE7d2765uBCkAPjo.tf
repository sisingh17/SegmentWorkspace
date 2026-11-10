import {
  to = segment_destination_subscription.id-66a0c9753fc5c8ba760f2ec1_gStt2ZZE7d2765uBCkAPjo
  id = "66a0c9753fc5c8ba760f2ec1:gStt2ZZE7d2765uBCkAPjo"
}

resource "segment_destination_subscription" "id-66a0c9753fc5c8ba760f2ec1_gStt2ZZE7d2765uBCkAPjo" {
  action_id            = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id       = "66a0c9753fc5c8ba760f2ec1"
  enabled              = false
  model_id             = null
  name                 = "Send"
  reverse_etl_schedule = null
  settings = jsonencode({
    batch_keys = ["url", "method", "headers"]
    batch_size = 0
    data = {
      "@path" = "$."
    }
    enable_batching = false
    method          = "POST"
  })
  trigger = "event = \"\""
}